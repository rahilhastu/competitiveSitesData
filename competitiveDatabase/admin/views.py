# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib.auth.decorators import login_required
from django.shortcuts import render

# Create your views here.
# @login_required
def alter(request):
	if request.method=='GET':
		username=None
		if request.session.has_key('username'):
			username = request.session['username']
		template = 'alter.html'
		context={'username':username}
		return render(request,template,context)
