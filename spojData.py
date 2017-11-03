import requests
import re
from bs4 import BeautifulSoup

def main():
	url = "http://www.spoj.com/ranks/users/"
	r = requests.get(url)
	data = r.text
	soup = BeautifulSoup(data,'lxml')

	for data in soup.findAll('tr'):
		print "Name : ",data.findAll()[3].text
		print "Rank  : ",data.findAll()[0].text
		try:
			userLink =  data.findAll('a')[0]['href']
			userProfile(userLink)
			print '-------------------'
		except:
			pass

def userProfile(link):
	url = 'http://www.spoj.com'+link
	req = requests.get(url)
	da = req.text
	Soup = BeautifulSoup(da,'lxml')
	
	for userData in Soup.findAll('div',{'class':'col-md-3'}):
		print 'Username : ',re.sub('[@]','',userData.find('h4').text)
		print 'Country : ',re.split(',',userData.find('p').text)[0]
		print 'Institute : ',re.split('Institution:',userData.findAll('p')[3].text)[1]
		problemsSolved(Soup)

def problemsSolved(Soup):
	for contestCode in Soup.findAll('tr'):
		print contestCode.find('td').text
		print contestCode.find('a')['href']
main()












