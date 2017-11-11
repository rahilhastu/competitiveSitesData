import requests
import re
from bs4 import BeautifulSoup
import MySQLdb

def main():
	url = "http://www.spoj.com/ranks/users/"
	r = requests.get(url)
	data = r.text
	soup = BeautifulSoup(data,'lxml')
	# print soup	
	count=0
	for data in soup.findAll('tr'):
		Name = data.findAll()[3].text
		if Name=='CLASSICAL' or Name== 'RANK':
			continue
		print Name
		Rank = data.findAll()[0].text
		try:
			userLink =  data.findAll('a')[0]['href']
			userProfile(userLink,Name,Rank)
			count+=1
			print '\t',count
			print '-------------------'
			if count==30:
				break
		except:
			pass

def userProfile(link,Name,Rank):
	url = 'http://www.spoj.com'+link
	req = requests.get(url)
	da = req.text
	Soup = BeautifulSoup(da,'lxml')
	
	for userData in Soup.findAll('div',{'class':'col-md-3'}):
		Username = re.sub('[@]','',userData.find('h4').text)
		Country =re.split(',',userData.find('p').text)[0]
		Institute = re.split('Institution:',userData.findAll('p')[3].text)[1]
		print Username
		try:
			cur.execute('insert into users() values(%s,%s)',(2,Username))
			cur.execute('insert into details() values(%s,%s,%s,%s,%s,%s)',(2,Username,Name,Rank,Institute,Country))
			conn.commit()
			problemsSolved(Soup,Username,Name,Rank,Country,Institute)

		except:
			conn.rollback()
	
def problemsSolved(Soup,Username,Name,Rank,Country,Institute):
	co = 0
	for contestCode in Soup.findAll('tr'):
		contest_code = contestCode.find('td').text
		try:
			cur.execute('insert into questions() values(%s,%s,%s)',(2,'Practice',contest_code))
		except:
			conn.rollback()
	
		resultAnswer(contestCode.find('a')['href'],contest_code,Username,Name,Rank,Country,Institute)
		co+=1
		print '\t\t',co
		if co==5:
			break

def resultAnswer(link,contest_code,Username,Name,Rank,Country,Institute):
	url = 'http://www.spoj.com'+link
	resultData = requests.get(url)
	res = resultData.text
	resultSoup = BeautifulSoup(res,'lxml')
	print contest_code,'----'
	answerCount= 0 
	for resultStatus in resultSoup.findAll('tr',{'class':'kol'}):
		# answerCount+=1
		language = resultStatus.find('td',{'class':'slang text-center'}).find('span').text
		result = resultStatus.find('td',{'class':'statusres text-center'}).text.split()
		result = ' '.join(result)
		print language,'\t\t',result
		try:
		# 	cur.execute('insert into users() values(%s,%s)',(2,Username))
		# 	cur.execute('insert into details() values(%s,%s,%s,%s,%s,%s)',(2,Username,Name,Rank,Institute,Country))
		# 	cur.execute('insert into questions() values(%s,%s,%s)',(2,'Practice',contest_code))
			cur.execute('insert into result(site_id,username,contest_code,question_code,result,language) values(%s,%s,%s,%s,%s,%s)',(2,Username,'Practice',contest_code,result,language))
			conn.commit()

		except:
			conn.rollback()
		
		# if answerCount==3:
					# break
		
	for resultStatus in resultSoup.findAll('tr',{'class':'kol1'}):
		# answerCount+=1
		language = resultStatus.find('td',{'class':'slang text-center'}).find('span').text
		result = resultStatus.find('strong').text
		print language,'\t\t',result
		try:
		# 	cur.execute('insert into users() values(%s,%s)',(2,Username))
		# 	cur.execute('insert into details() values(%s,%s,%s,%s,%s,%s)',(2,Username,Name,Rank,Institute,Country))
		# 	cur.execute('insert into questions() values(%s,%s,%s)',(2,'Practice',contest_code))
			cur.execute('insert into result(site_id,username,contest_code,question_code,result,language) values(%s,%s,%s,%s,%s,%s)',(2,Username,'Practice',contest_code,result,language))
			conn.commit()

		except:
			conn.rollback()
		
		# if answerCount==3:
				# break


conn = MySQLdb.connect(user='root',password='2824',database='competitiveDatabase')
cur = conn.cursor()
main()
conn.commit()
conn.close()












