from django.shortcuts import render, redirect
from django.contrib import messages
from validate_email import validate_email
from .models import *
from django.contrib.auth import authenticate, login, logout
from django.urls import reverse
from helpers.decorators import auth_user_should_not_access
from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.utils.encoding import force_bytes, force_str,  DjangoUnicodeDecodeError
from .utils import generate_token
from django.core.mail import EmailMessage, send_mail
from django.conf import settings
import threading
from rest_framework.response import Response

from rest_framework.exceptions import APIException, AuthenticationFailed
from .jwtToken import create_access_token, create_refresh_token, decode_access_token, decode_refresh_token, JWTAuthentication
import datetime
import random
import string

from .models import *
from .serializers import *
from rest_framework.permissions import IsAuthenticated
from rest_framework import viewsets, generics, status
from rest_framework.views import APIView
from rest_framework.parsers import FormParser, MultiPartParser


class User_viewsets(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    # permission_classes = [IsAuthenticated]


class UserList_viewsets(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserListSerializer
    filterset_fields = ['is_manager']


class role_master_viewsets(viewsets.ModelViewSet):
    queryset = role_master.objects.all()
    serializer_class = role_masterSerializer


class company_master_viewsets(viewsets.ModelViewSet):
    queryset = company_master.objects.all()
    serializer_class = company_masterSerializer
    # permission_classes = [IsAuthenticated]


class hotel_logoviewsets(viewsets.ModelViewSet):
    queryset = hotel_logo.objects.all()
    serializer_class = hotel_logoSerializer
    parser_class = [FormParser, MultiPartParser]
    filterset_fields = ['hotel_id']
    # permission_classes = [IsAuthenticated]


class Current_User_API_view(APIView):
    def get(self, request):
        serializers = CurrentUserSerializerExcludePassword(request.user)
        return Response(serializers.data)


class EmailThread(threading.Thread):

    def __init__(self, email):
        self.email = email
        threading.Thread.__init__(self)

    def run(self):
        self.email.send()


def send_activation_email(user, request):
    current_site = get_current_site(request)
    email_subject = 'Activate your account'
    email_body = render_to_string('authentication/activate.html', {
        'user': user,
        'domain': current_site,
        'uid': urlsafe_base64_encode(force_bytes(user.pk)),
        'token': generate_token.make_token(user)
    })

    email = EmailMessage(subject=email_subject, body=email_body,
                         from_email=settings.EMAIL_FROM_USER,
                         to=[user.email]
                         )

    if not settings.TESTING:
        EmailThread(email).start()


@auth_user_should_not_access
def register(request):

    company_data = company_master.objects.all()
    role_data = role_master.objects.all()

    company = {
        "company_master": company_data,
        # "role_master": role_data
    }

    if request.method == "POST":
        context = {'has_error': False, 'data': request.POST}
        email = request.POST.get('email')
        username = request.POST.get('username')
        company = request.POST.get('company')
        password = request.POST.get('password')
        password2 = request.POST.get('password2')

        # print("Company - "+ company)
        if len(password) < 6:
            messages.add_message(request, messages.ERROR,
                                 'Password should be at least 6 characters')
            context['has_error'] = True

        if password != password2:
            messages.add_message(request, messages.ERROR,
                                 'Password mismatch')
            context['has_error'] = True

        if not validate_email(email):
            messages.add_message(request, messages.ERROR,
                                 'Enter a valid email address')
            context['has_error'] = True

        if not username:
            messages.add_message(request, messages.ERROR,
                                 'Username is required')
            context['has_error'] = True

        if User.objects.filter(username=username).exists():
            messages.add_message(request, messages.ERROR,
                                 'Username is taken, choose another one')
            context['has_error'] = True

            return render(request, 'authentication/register.html', context, status=409)

        if User.objects.filter(email=email).exists():
            messages.add_message(request, messages.ERROR,
                                 'Email is taken, choose another one')
            context['has_error'] = True

            return render(request, 'authentication/register.html', context, status=409)

        if context['has_error']:
            return render(request, 'authentication/register.html', context)

        user = User.objects.create_user(username=username, email=email)
        user.set_password(password)
        # company_by_id = company_master.objects.get(id=company)
        user.company_id = company
        user.save()

        if not context['has_error']:

            #send_activation_email(user, request)

            messages.add_message(request, messages.SUCCESS,
                                 'We sent you an email to verify your account')
            return redirect('login')

    # data = company_master.objects.all()
    # context['role_master'] = data
    # for comp in company['role_master']:
    #     print(comp.role_name)

    return render(request, 'authentication/register.html', company)


@auth_user_should_not_access
def login_user(request):

    if request.method == 'POST':
        context = {'data': request.POST}
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user and not user.is_email_verified:
            messages.add_message(request, messages.ERROR,
                                 'Email is not verified, please check your email inbox')
            return render(request, 'authentication/login.html', context, status=401)

        if not user:
            messages.add_message(request, messages.ERROR,
                                 'Invalid credentials, try again')
            return render(request, 'authentication/login.html', context, status=401)

        login(request, user)

        # messages.add_message(request, messages.SUCCESS,
        #                      f'Welcome {user.username}')

        return redirect(reverse('home'))

    return render(request, 'authentication/login.html')


def logout_user(request):

    logout(request)

    messages.add_message(request, messages.SUCCESS,
                         'Successfully logged out')

    return redirect(reverse('login'))


def activate_user(request, uidb64, token):

    try:
        uid = force_str(urlsafe_base64_decode(uidb64))

        user = User.objects.get(pk=uid)

    except Exception as e:
        user = None

    if user and generate_token.check_token(user, token):
        user.is_email_verified = True
        user.save()

        messages.add_message(request, messages.SUCCESS,
                             'Email verified, you can now login')
        return redirect(reverse('login'))

    return render(request, 'authentication/activate-failed.html', {"user": user})


class RegisterAPIView(APIView):
    def post(self, request):
        data = request.data

        if data['password'] != data['password_confirm']:
            raise APIException('Passwords do not match!')

        serializer = UserSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)


class LoginAPIView(APIView):
    def post(self, request):
        user = User.objects.filter(username=request.data['username']).first()

        if not user:
            raise APIException('Invalid credentials!')

        if not user.check_password(request.data['password']):
            raise APIException('Invalid credentials!')

        access_token = create_access_token(user.id)
        refresh_token = create_refresh_token(user.id)

        utoken = UserToken.objects.create(
            user_id=user.id,
            token=refresh_token,
            expired_at=datetime.datetime.utcnow() + datetime.timedelta(days=1)
        )

        response = Response()
        # response.set_cookie(key='refreshToken', value=refresh_token, httponly=True)

        response.data = {
            'token': access_token,
            'r_token': refresh_token,
            'username': user.username,

        }

        return response


class UserAPIView(APIView):
    authentication_classes = [JWTAuthentication]

    def get(self, request):
        return Response(UserSerializer(request.user).data)


class RefreshAPIView(APIView):
    def post(self, request):
        refresh_token = request.COOKIES.get('refreshToken')
        refresh_token = request.data['r_token']
        id = decode_refresh_token(refresh_token)

        if not UserToken.objects.filter(
            user_id=id,
            token=refresh_token,
            expired_at__gt=datetime.datetime.now(tz=datetime.timezone.utc)
        ).exists:
            raise AuthenticationFailed('unauthenticated')

        access_token = create_access_token(id)
        return Response({
            'token': access_token
        })


class LogoutAPIView(APIView):
    authentication_classes = [JWTAuthentication]

    def post(self, request):
        # refresh_token = request.COOKIES.get('refreshToken')
        refresh_token = request.data['r_token']
        ut = UserToken.objects.filter(token=refresh_token)
        ut.delete()
        response = Response()
        response.delete_cookie(key="refreshToken")
        response.data = {
            'message': 'success'
        }
        return response


class forgotAPIView(APIView):
    def post(self, request):
        token = ''.join(random.choice(string.ascii_lowercase +
                                      string.digits) for _ in range(10))
        email = request.data['email']
        Reset.objects.create(
            email=email,
            token=token
        )

        url = 'http://localhost:8080/reset/' + token

        send_mail(
            'Reset your password!',
            'Click <a href="%s">here</a> to reset your password!' % url,
            settings.EMAIL_FROM_USER,
            [email],
            fail_silently=False,
        )

        return Response({
            'message': 'success'
        })


class ResetAPIView(APIView):
    def post(self, request):
        data = request.data

        if data['password'] != data['password_confirm']:
            raise APIException('Passwords do not match!')

        reset = Reset.objects.filter(token=data['token']).first()

        if not reset:
            raise APIException('Invalid link!')

        user = User.objects.filter(email=reset.email).first()

        if not user:
            raise APIException('User not found!')

        user.set_password(data['password'])
        user.save()

        return Response({
            'message': 'success'
        })
