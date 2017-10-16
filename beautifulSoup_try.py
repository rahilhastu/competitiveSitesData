import requests
from bs4 import BeautifulSoup

url = "https://pythonprogramming.net/parsememcparseface/"
r = requests.get(url)

soup = BeautifulSoup(r.content,"lxml")

body = soup.body

table = soup.table
# table = soup.find('table')
table_rows = table.find_all('tr')

for tr in table_rows:
	td =  tr.find_all('td')
	row = [i.text for i in td]
	print row