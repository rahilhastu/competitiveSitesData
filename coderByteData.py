import requests
import re
from bs4 import BeautifulSoup

def main():
	url = 'https://coderbyte.com/rankings/'
	r = requests.get(url)
	data = r.text
	soup = BeautifulSoup(data,'lxml')

	# for links in soup.find('div',{'id':'rankings_area'}):
	for table in soup.find('div',{'id':'rankings_area'}).findAll('a'):
		print "Rank : ",table.find('span',{'class':'numberRanking'}).text
		print "Username : ",table.find('span',{'class':'username_rank'}).text
		try:
			print "Country : ",table.find('span',{'class':'points_for_user fontCountry'}).text
		except:
			pass
		user(table['href'])
		print '-------------------------------'

def user(link):
	url = 'https://coderbyte.com'+link
	req = requests.get(url)
	m = req.text
	userDetails = BeautifulSoup(m,'lxml')
	if userDetails.find('span',{'class':'fullName_text'}).text == '':
		print 'Name : NA'
	else:
		print "Name : ",re.findall('[^()]+',userDetails.find('span',{'class':'fullName_text'}).text)[0]

	if re.split('Organization:',userDetails.find('p',{'class':'org_text'}).text)[1] == ' ':
		print "Institute : NA"
	else:
		print "Institute : ",re.split('Organization:',userDetails.find('p',{'class':'org_text'}).text)[1]
	
	# for users in userDetails.find 


main()