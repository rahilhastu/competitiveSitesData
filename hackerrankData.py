import requests
from bs4 import BeautifulSoup
import re

def mainRating():
	link = 'www.hackerrank.com/leaderboard'
	r = requests.get('http://'+link)
	data = r.text
	soup = BeautifulSoup(data,'lxml')
	# print soup.prettify()
	for user in soup.findAll('div',{'class','table-row clearfix'}):
		print 'Rank : ',user.find('div',{'class':'table-row-column rank','class':'text-ellipsis'}).text
		print 'Username : ',user.find('div',{'class':'table-row-column','class':'backbone cursor leaderboard-hackername rg_1','class':'inline-block middle hacker-name text-ellipsis'}).text
		print 'Country : ',user.find('img',{'class':'flag'})['data-tip']
		linkToUser = user.find('a',href=True)['href']
		userProfile(linkToUser)
		print '----------'

def userProfile(link):
	profileLink = 'www.hackerrank.com'+link
	req = requests.get('http://'+profileLink+'?hr_r=1')
	Data = req.text
	Soup = BeautifulSoup(Data,'lxml')
	print 'Name : ',Soup.find('h3',{'class':'mlT msB'}).text
	print 'Institute : ',Soup.find('span',{'itemprop':'name'}).text
	print 'Language : ',Soup.findAll('li',{'class':'psA plL small bold'})[-1].text

mainRating()