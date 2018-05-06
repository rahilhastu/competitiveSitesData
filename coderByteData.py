import MySQLdb
import requests
import re
from bs4 import BeautifulSoup
def main():
	count=0
	url = 'https://coderbyte.com/rankings/'
	r = requests.get(url)
	data = r.text
	soup = BeautifulSoup(data,'lxml')

	# for links in soup.find('div',{'id':'rankings_area'}):
	for table in soup.find('div',{'id':'rankings_area'}).findAll('a'):
		rank = table.find('span',{'class':'numberRanking'}).text
		Username = table.find('span',{'class':'username_rank'}).text
		print Username,'\t',count

		try:
			cur.execute('insert into users() values(%s,%s)',(3,Username))
			con.commit()
		except:
			conn.rollback()
		
		try:
			Country = table.find('span',{'class':'points_for_user fontCountry'}).text
		except:
			pass

		user(table['href'],rank,Username,Country)
		count+=1
		if count==30:
			break
		print '-------------------------------'
	print count
def user(link,rank,Username,Country):
	url = 'https://coderbyte.com'+link
	req = requests.get(url)
	m = req.text
	userDetails = BeautifulSoup(m,'lxml')
	if userDetails.find('span',{'class':'fullName_text'}).text == '':
		Name ='NA'
		print Name
	else:
		Name = re.findall('[^()]+',userDetails.find('span',{'class':'fullName_text'}).text)[0]
		print "Name : ",re.findall('[^()]+',userDetails.find('span',{'class':'fullName_text'}).text)[0]

	if re.split('Organization:',userDetails.find('p',{'class':'org_text'}).text)[1] == ' ':
		Institute = 'School'
	else:
		Institute  = re.split('Organization:',userDetails.find('p',{'class':'org_text'}).text)[1]
	print '\tContests'
	
	count=0
	
	try:
		cur.execute('insert into details() values(%s,%s,%s,%s,%s,%s)',(3,Username,Name,rank,Institute,Country))
		con.commit()
	except:
		con.rollback()
	#######################################################################################3
	for questionCode in userDetails.find('div',{'id':'display_comp_challenges'}):
		count+=1
		if count==10:
			break
		if questionCode.find('span') == -1:
			continue
		else:
			try:
				questionCodeContext = questionCode.find('span').text
				Language  = questionCode.find('div').find('span').text
				print '\t\t',questionCodeContext,'\t\t\t',Language
				cur.execute('insert into questions() values(%s,%s,%s)',(3,'Practice',questionCodeContext))
				# cur.execute('insert into result(site_id,username,contest_code,question_code,result,language) values(%s,%s,%s,%s,%s,%s)',(3,Username,'Practice',questionCodeContext,'accepted',Language))
				con.commit()
			except:
				con.rollback()

			try:
				cur.execute('insert into result(site_id,username,contest_code,question_code,result,language) values(%s,%s,%s,%s,%s,%s)',(3,Username,'Practice',questionCodeContext,'accepted',Language))
				con.commit()
			except:
				# pass
				con.rollback()


		# print questionCode.find('div',{'class':''}).find('span')

con = MySQLdb.connect(user='root',password='2824',database='competitiveDatabase')
cur = con.cursor()
main()
con.commit()
# con.close()