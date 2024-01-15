from django.db import models
from django.db.models import fields
from django.db.models.base import Model
from rest_framework import serializers


from .models import *


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'

    def create(self, validated_data):
        password = validated_data.pop('password', None)
        instance = self.Meta.model(**validated_data)
        if password is not None:
            instance.set_password(password)
        instance.save()
        return instance


class UserListSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        exclude = ('password',)


class role_masterSerializer(serializers.ModelSerializer):
    class Meta:
        model = role_master
        fields = '__all__'


class company_masterSerializer(serializers.ModelSerializer):
    class Meta:
        model = company_master
        fields = '__all__'


class CurrentUserSerializerExcludePassword(serializers.ModelSerializer):
    class Meta:
        model = User
        exclude = ('password',)


class hotel_logoSerializer(serializers.ModelSerializer):
    class Meta:
        model = hotel_logo
        fields = '__all__'
