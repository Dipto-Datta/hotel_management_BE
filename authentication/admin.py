from django.contrib import admin
from .models import User, role_master, company_master, hotel_logo


class UserAdmin(admin.ModelAdmin):

    list_display=('username','email','is_staff')
    search_fields =('username','email','is_staff')
    list_per_page=25
    

admin.site.register(User, UserAdmin)
admin.site.register(role_master)
admin.site.register(company_master)
admin.site.register(hotel_logo)

