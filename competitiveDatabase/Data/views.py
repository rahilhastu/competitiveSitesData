# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django import forms
from django.shortcuts import render
from Data.models import Result,Questions,Details,Sites,Users
from django.conf import settings
import MySQLdb
from django.db import connection

conn = MySQLdb.connect(user='root',password='riakedia',database='competitiveDatabase')
cur = conn.cursor()

def homeP(request):

	context = {}
	template = 'homePage.html'
	return render(request,template,context)

def submissions(request):
	
	if request.method== 'GET':
		sql_sta = "select s.site,r.site_id,r.username,r.id,r.contest_code,r.question_code,r.language,r.result from result as r , sites as s where s.site_id=r.site_id " 
		ans = cur.execute(sql_sta)
		data = cur.fetchall()
		total = len(data)
		print data
		context={"data" : data,'total':total,}
		template = 'display_sites.html'
		
		return render(request,template,context)
		
	if request.method == 'POST': # If the form has been submitted
		s,u,c,q,r=0,0,0,0,0
		site = str(request.POST['site'])
		username = str(request.POST['username'])
		contest = str(request.POST['contest'])	
		question = str(request.POST['question'])
		result = str(request.POST['result'])
		language = str(	request.POST['lang'])	
		sql = "select s.site,r.site_id,r.username,r.id,r.contest_code,r.question_code,r.language,r.result from result as r , sites as s where s.site_id=r.site_id and "
		# question =+question
		def andd(sql):
			sql +=" and "
			return sql
		# print site,username,contest,question,result,language
		if len(site) != 0:
			sql+=" r.site_id = '%s' " %(site)
			s=1

		if len(username) != 0:
			if s==1:
				sql = andd(sql)
			sql+=" username = '%s'" %(username)
			u=1

		if len(contest) != 0:
			if u==1 or s==1:
				sql = andd(sql)
			sql+=" contest_code = '%s'" %(contest)
			c=1

		if len(question) != 0:
			if c==1 or u==1 or s==1:
				sql = andd(sql)
			sql+=" question_code = '%s'" %(question)
			q=1

		if len(result) != 0:
			if q==1 or c==1 or u==1 or s==1:
				sql = andd(sql)
			sql+=" result = '%s'" %(result)
			r = 1

		if len(language) != 0:
			if r ==1 or q==1 or c==1 or u==1 or s==1:
				sql = andd(sql)
			sql+=" language = '%s'" %(language)

		print sql
		# data = Result.objects.raw(sql)
		q = cur.execute(sql)
		data = cur.fetchall()
		total = len(data)
		context={'data':data,'total':total,}
		template = 'display_sites.html'
		# conn.close()
		return render(request,template,context)

def ranks(request):
	if request.method=='GET':
		context= {}
		template = 'rank.html'
		return render(request,template,context)
