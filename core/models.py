from django.db import models
from django.contrib.auth.models import AbstractUser, BaseUserManager, AbstractBaseUser


# Create your models here.


class UserManager(BaseUserManager):
    def create_superuser(self, email, password=None, **extra_fields):
        if not email:
            raise ValueError("Users must have an email address")
        user = self.model

class User(AbstractUser):
    pass
