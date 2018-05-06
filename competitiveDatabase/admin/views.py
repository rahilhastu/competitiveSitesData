# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render
from django.http import HttpResponseRedirect
import MySQLdb

# Create your views here.
conn = MySQLdb.connect(user='root',passwd='2506',db='competitiveDatabase')
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
		site = unicode(request.POST['Site'])
		username = unicode(request.POST['username'])
		name = unicode(request.POST['name'])
		institute = unicode(request.POST['institute'])
		country = unicode(request.POST['country'])
		rank = unicode(request.POST['rank'])
		print site,username,name,institute,country,rank
		# print site
		try:
			print '------A'
			params = (site,rank)
			print params
			cur.callproc('addOneToRank',params) #calling procedure
			print "-----------------------------------------------------"
			conn.commit()
			cur.execute('insert into details() values(%s,%s,%s,%s,%s,%s)',(site,username,name,rank\
																			,institute,country))
			print '------B'
			conn.commit()
			if username!=None:
				context = {'username':username,'site':site}
				template = 'homePage.html'
			return render(request,template,context)
		except:
			template = 'alter.html'
			context = {'err1':'error in data\n'}
			print '------C'
			conn.rollback()
			return HttpResponseRedirect("/alter",context)