# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django import forms
from django.shortcuts import render
from Data.models import Result,Questions
from django.conf import settings
import MySQLdb
from django.db import connection

conn = MySQLdb.connect(user='root',password='2824',database='competitiveDatabase')
cur = conn.cursor()

def homeP(request):

	context = {}
	template = 'homePage.html'
	return render(request,template,context)

def sites(request):
	
	if request.method== 'GET':
		data = Result.objects.all()
		context={"data" : data,}
		template = 'display_sites.html'
		return render(request,template,context)
		
	if request.method == 'POST': # If the form has been submitted
		sitee,user,cont,que,res,l=1,1,1,1,1,1
		site = str(request.POST['site'])
		if site=='':
			sitee=0
		username = str(request.POST['username'])
		if username=='':
			user=0
		contest = str(request.POST['contest'])	
		if contest=='':
			cont=0
		question = str(request.POST['question'])
		if question=='':
			que=0
		result = str(request.POST['result'])
		if result=='':
			res=0
		language = str(	request.POST['lang'])	
		if language=='':
			l=0
		print site,username,contest,question,result,language
		sql = "select id,language from result where username = '%s'" %(username)
		data = Result.objects.raw(sql)
		print data
		# data = Result.objects.filter(site_id=site,username=username,contest_code=contest,question_code=question,result=result,language=language)
		# query = ("SELECT * FROM Result "
         # "WHERE username = %s")
		# data = cur.execute(query,(username))

		context={'data':data}
		template = 'display_sites.html'
		# conn.close()
		return render(request,template,context)

