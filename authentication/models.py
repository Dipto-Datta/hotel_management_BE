from unittest.util import _MAX_LENGTH
from django.db import models
from django.db.models.base import Model
from django.contrib.auth.models import AbstractUser
from django.db.models.deletion import CASCADE, SET_NULL


class company_master(models.Model):
    company_name = models.CharField(max_length=2000)
    company_address = models.CharField(max_length=100, null=True, blank=True)
    tax = models.IntegerField(null=True, blank=True)
    service_charge = models.IntegerField(null=True, blank=True)
    zip_code = models.CharField(max_length=10, null=True, blank=True)
    branch = models.CharField(max_length=25, null=True, blank=True)
    city = models.CharField(max_length=50, null=True, blank=True)
    bat = models.CharField(max_length=50, null=True, blank=True)
    bin = models.CharField(max_length=50, null=True, blank=True)
    contact_person_name = models.CharField(max_length=50, null=True, blank=True)
    contact_person_phone = models.CharField(max_length=50, null=True, blank=True)
    laundry_tax = models.IntegerField(null=True, blank=True)
    laundry_sc = models.IntegerField(null=True, blank=True)
    room_service_tax = models.IntegerField(null=True, blank=True)
    room_service_sc = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return self.company_name


class role_master(models.Model):
    role_name = models.CharField(max_length=2000, blank=True, null=True)
    # company = models.ForeignKey(company_master, on_delete=CASCADE, null=True)
    position = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return self.role_name


class User(AbstractUser):
    is_email_verified = models.BooleanField(default=False)
    is_expired = models.BooleanField(default=False)
    expired_date = models.DateTimeField(null=True)
    company = models.ForeignKey(company_master, on_delete=CASCADE, null=True)
    role = models.ForeignKey(role_master, on_delete=CASCADE, null=True)
    position = models.CharField(blank=True, null=True, max_length=100)
    is_manager = models.BooleanField(default=False)
    limit_start = models.CharField(max_length=100, null=True, blank=True)
    limit_end = models.CharField(max_length=100, null=True, blank=True)

    def __str__(self):
        return self.email


class hotel_logo(models.Model):
    hotel_id = models.ForeignKey(company_master, null=True, on_delete=SET_NULL)
    pic = models.ImageField(blank=True, null=True)
    back01 = models.ImageField(blank=True, null=True)
    back02 = models.ImageField(blank=True, null=True)
    back03 = models.ImageField(blank=True, null=True)
    back04 = models.ImageField(blank=True, null=True)
    back05 = models.ImageField(blank=True, null=True)
    back06 = models.ImageField(blank=True, null=True)
    back07 = models.ImageField(blank=True, null=True)
    back08 = models.ImageField(blank=True, null=True)

    def __str__(self):
        return str(self.hotel_id)


class UserToken(models.Model):
    user_id = models.IntegerField(null=True)
    token = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    expired_at = models.DateTimeField()


class Reset(models.Model):
    email = models.CharField(max_length=255)
    token = models.CharField(max_length=255, unique=True)
