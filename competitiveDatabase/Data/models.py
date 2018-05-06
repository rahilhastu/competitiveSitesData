# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class Admin(models.Model):
    username = models.CharField(primary_key=True, max_length=40)
    password = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'admin'


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Details(models.Model):
    site = models.ForeignKey('Users', models.DO_NOTHING, primary_key=True,related_name='site_uni')
    username = models.ForeignKey('Users', models.DO_NOTHING, db_column='username')
    name = models.CharField(max_length=100)
    rank = models.IntegerField()
    institute = models.CharField(max_length=100)
    country = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'details'
        unique_together = (('site', 'rank'), ('site', 'username'), ('site', 'username', 'rank'),)

    def __str__(self):
        return self.name

class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class DjangoSite(models.Model):
    domain = models.CharField(unique=True, max_length=100)
    name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'django_site'


class Questions(models.Model):
    site = models.ForeignKey('Sites', models.DO_NOTHING, primary_key=True)
    contest_code = models.CharField(max_length=100)
    question_code = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'questions'
        unique_together = (('site', 'contest_code', 'question_code'),)

    def __str__(self):
        return self.contest_code + " - " + self.question_code

class Result(models.Model):
    id = models.BigAutoField(primary_key=True)
    site = models.ForeignKey(Questions, models.DO_NOTHING)
    username = models.ForeignKey('Users', models.DO_NOTHING, db_column='username')
    contest_code = models.ForeignKey(Questions, models.DO_NOTHING, db_column='contest_code',related_name='contest_uni')
    question_code = models.ForeignKey(Questions, models.DO_NOTHING, db_column='question_code',related_name='question_uni')
    result = models.CharField(max_length=50)
    language = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'result'

    def __unicode__(self):
        return self.username()

class Sites(models.Model):
    site_id = models.AutoField(primary_key=True)
    site = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'sites'
        unique_together = (('site_id', 'site'),)

    def __str__(self):
        return self.site


class Users(models.Model):
    sid = models.ForeignKey(Sites, models.DO_NOTHING, db_column='sid', primary_key=True)
    username = models.CharField(db_column='userNAME', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'users'
        unique_together = (('sid', 'username'),)

    def __str__(self):
        return self.username
