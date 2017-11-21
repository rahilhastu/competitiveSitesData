# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render
from django.http import HttpResponse
import MySQLdb

# Create your views here.
conn = MySQLdb.connect(user='root',password='2824',database='competitiveDatabase')
cur = conn.cursor()

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

	if request.method=='POST':
		username = str(request.POST['username'])
		name = str(request.POST['name'])
		rank = str(request.POST['rank'])	
		institute = str(request.POST['institute'])
		country = str(request.POST['country'])

