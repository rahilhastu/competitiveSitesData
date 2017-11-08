# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from Data.models import Result,Questions

def homeP(request):

	context = {}
	template = 'homePage.html'
	return render(request,template,context)

def sites(request):
	data = Result.objects.all()
	ques = Questions.objects.all()
	print data
	context={"data" : data,
			 "ques" : ques,}
	template = 'display_sites.html'
	return render(request,template,context)