import requests
from bs4 import BeautifulSoup

url = "https://pythonprogramming.net/parsememcparseface/"
r = requests.get(url)

soup = BeautifulSoup(r.content,"lxml")

for paragraph in soup.find_all('p'):
	print paragraph