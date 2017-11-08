# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Details,Questions,Result,Sites,Users

# Register your models here.
class DetailsAdmin(admin.ModelAdmin):
	class Meta:
		model = Details

admin.site.register(Details)

class QuestionAdmin(admin.ModelAdmin):
	class Meta:
		model = Questions

admin.site.register(Questions)

class ResultAdmin(admin.ModelAdmin):
	class Meta:
		model = Result

admin.site.register(Result)

class UserAdmin(admin.ModelAdmin):
	class Meta:
		model = Users

admin.site.register(Users)

class SitesAdmin(admin.ModelAdmin):
	class Meta:
		model = Sites

admin.site.register(Sites)