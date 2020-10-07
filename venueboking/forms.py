from .models import *
from django import forms
# Create your models here.
class CateringesForm(forms.ModelForm):
    class Meta:
        db_table = 'cateringes'
        fields = "__all__"


class Decorations(models.Model):
    id = models.BigAutoField(primary_key=True)
    decoration_type = models.CharField(max_length=255)
    price = models.IntegerField()
    remember_token = models.CharField(max_length=100, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'decorations'


class Feedbacks(models.Model):
    id = models.BigAutoField(primary_key=True)
    feedback_details = models.CharField(max_length=255)
    feedback_date = models.IntegerField()
    remember_token = models.CharField(max_length=100, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'feedbacks'


class Migrations(models.Model):
    migration = models.CharField(max_length=255)
    batch = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'migrations'


class Packages(models.Model):
    id = models.BigAutoField(primary_key=True)
    venue = models.ForeignKey('Venues', models.DO_NOTHING)
    package_details = models.CharField(max_length=255)
    cost = models.IntegerField()
    remember_token = models.CharField(max_length=100, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'packages'


class PasswordResets(models.Model):
    email = models.CharField(max_length=255)
    token = models.CharField(max_length=255)
    created_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'password_resets'


class Payments(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey('Users', models.DO_NOTHING)
    total_amount = models.IntegerField()
    amount_paid = models.IntegerField()
    status = models.CharField(max_length=255)
    date = models.DateTimeField()
    remember_token = models.CharField(max_length=100, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'payments'


class Users(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=255)
    email = models.CharField(unique=True, max_length=255)
    email_verified_at = models.DateTimeField(blank=True, null=True)
    password = models.CharField(max_length=255)
    is_admin = models.IntegerField(blank=True, null=True)
    remember_token = models.CharField(max_length=100, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'users'


class Venues(models.Model):
    id = models.BigAutoField(primary_key=True)
    venue_name = models.CharField(max_length=255)
    address = models.TextField()
    price = models.CharField(max_length=11)
    capacity_of_people = models.IntegerField()
    remember_token = models.CharField(max_length=100, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'venues'