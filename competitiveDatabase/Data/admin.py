# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Details,Questions,Result,Sites,Users,Admin

admin.site.register(Admin)
admin.site.register(Sites)
admin.site.register(Users)
admin.site.register(Questions)
admin.site.register(Result)
admin.site.register(Details)
# Register your models here.
'''class DetailsAdmin(admin.ModelAdmin):
	class Meta:
		model = Details


lass QuestionAdmin(admin.ModelAdmin):
	class Meta:
		model = Questions


class ResultAdmin(admin.ModelAdmin):
	class Meta:
		model = Result


class UserAdmin(admin.ModelAdmin):
	class Meta:
		model = Users


class SitesAdmin(admin.ModelAdmin):
	class Meta:
		model = Sites
'''