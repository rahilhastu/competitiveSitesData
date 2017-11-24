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

	if request.method == 'POST':
		username=None
		if request.session.has_key('username'):
			username = request.session['username']
		site = unicode(request.POST['Site'])
		username = unicode(request.POST['username'])
		name = unicode(request.POST['name'])
		institute = unicode(request.POST['institute'])
		country = unicode(request.POST['country'])
		rank = unicode(request.POST['rank'])
		print site,username,name
		# print site
		try:
			print '------A'
			cur.execute('insert into details() values (%s,%s,%s,%s,%s,%s)',(site,username,name,rank,institute,country))
			print '------B'
			conn.commit()
			if username!=None:
				context = {'username':username}
			template = 'homePage.html'
		except:
			print '------C'
			template = 'alter.html'
			context = {}
			conn.rollback()

		return render(request,template,context)

def alterquestions(request):
	username=None
	if request.session.has_key('username'):
		username = request.session['username']
	if username!=None:
		context = {'username':username}
		template = 'addQuestions.html'
	
	return render(request,template,context)			