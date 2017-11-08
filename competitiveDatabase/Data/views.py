# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django import forms
from django.shortcuts import render
from Data.models import Result,Questions
from django.conf import settings
import MySQLdb

def homeP(request):

	context = {}
	template = 'homePage.html'
	return render(request,template,context)

def sites(request):
	data = Result.objects.all()
	# print data
	# print superusers = User.objects.filter(is_superuser=True)
	if request.method == 'POST': # If the form has been submitted
	
		site = request.POST['site']
		username = request.POST['username']
		contest = request.POST['contest']
		question = request.POST['question']
		result = request.POST['result']
		language = request.POST['lang']	
		print site,username,contest,question,result,language
		data = Result.objects.filter(site_id=site,username=username,contest_code=contest,question_code=question,result=result,language=language)
		context={'data':data}
		template = 'display_sites.html'
		return render(request,template,context)

	context={"data" : data,}
	template = 'display_sites.html'
	
	return render(request,template,context)

	# def post(self,request)
		# if request.method == 'POST': # If the form has been submitted
			# form = ContactForm(request.POST)
			# name = forms['site']
			# username = forms.cleaned_data['username']
			# contest = forms.cleaned_data['contest']
			# question = forms.cleaned_data['question']
			# result = forms.cleaned_data['result']
			# language = forms.cleaned_data['lang']
			# print name,username,contest,question,result,language