# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
import MySQLdb

def homeP(request):

	context = {}
	template = 'homePage.html'
	return render(request,template,context)

def sites(request):
	conn = MySQLdb.connect(user='root',password='2824',database='competitiveDatabase')
	cur = conn.cursor()
	cur.execute("Select * from sites")
	conn.close()

	# context = {'site':site}
	context={}
	template = 'display_sites.html'
	return render(request,template,context)