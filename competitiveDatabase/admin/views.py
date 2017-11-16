# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def alter(request):
	username=None
	if request.session.has_key('username'):
		username = request.session['username']
	if request.method=='GET':
		if username==None:
			context={'err':'You need to Login'}
			template='alter.html'
			return render(request,template,context)
		else:
			template = 'alter.html'
			context={'username':username}
			return render(request,template,context)
