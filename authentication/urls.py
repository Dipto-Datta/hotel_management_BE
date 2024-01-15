# from django.urls import path
# from . import views

from django.urls import include, path
from rest_framework.routers import SimpleRouter
from . import views as wpos
from django.contrib.auth import views as auth_views
from rest_framework_simplejwt import views as jwt_views
router = SimpleRouter()

router.register(r"user", wpos.User_viewsets)
router.register(r"role", wpos.role_master_viewsets)
router.register(r"company", wpos.company_master_viewsets)
router.register(r"hotel_logo", wpos.hotel_logoviewsets)
router.register(r"users", wpos.UserList_viewsets)

urlpatterns = [
    path('', include(router.urls)),
    path('registers', wpos.RegisterAPIView.as_view()),
    path('logins', wpos.LoginAPIView.as_view()),
    path('currentuser/', wpos.UserAPIView.as_view()),
    path('refresh', wpos.RefreshAPIView.as_view()),
    path('logout', wpos.LogoutAPIView.as_view()),

    path('forget', wpos.forgotAPIView.as_view()),
    path('reset', wpos.ResetAPIView.as_view()),

    # old system
    path('api/token/',
         jwt_views.TokenObtainPairView.as_view(),
         name='token_obtain_pair'),
    path('api/token/refresh/',
         jwt_views.TokenRefreshView.as_view(),
         name='token_refresh'),
    path('login', wpos.login_user, name='login'),
    path('register', wpos.register, name='register'),
    path("logout_user", wpos.logout_user, name='logout_user'),
    path('activate-user/<uidb64>/<token>',
         wpos.activate_user, name='activate'),
    #     path("currentuser/", wpos.Current_User_API_view.as_view(), name="current-user"),
    path('reset_password/', auth_views.PasswordResetView.as_view(),
         name="reset_password"),
    path('reset_password_sent/', auth_views.PasswordResetDoneView.as_view(),
         name="password_reset_done"),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(),
         name="password_reset_confirm"),
    path('reset_password_complete/', auth_views.PasswordResetCompleteView.as_view(),
         name="password_reset_complete"),
]
