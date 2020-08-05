#-*- coding:utf-8 -*-
#이미지 크롤링 프로그램(네이버)
#2020-07-09
#https://h-glacier.tistory.com/entry/Python-%ED%8C%8C%EC%9D%B4%EC%8D%AC-BeautifulSoup4%EB%A5%BC-%EC%9D%B4%EC%9A%A9%ED%95%B4-%EC%9B%B9-%ED%81%AC%EB%A1%A4%EB%A7%81-%EC%98%88%EC%A0%9C-%EB%A7%8C%EB%93%A4%EC%96%B4-%EB%B3%B4%EA%B8%B0?category=856073


from bs4 import BeautifulSoup as bs
from urllib.request import urlopen
from urllib.parse import quote_plus
import urllib




#코로나19 현황 가져오기

webpage = urllib.request.urlopen('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%ED%99%98%EC%9C%A8')
soup = bs(webpage, 'html.parser')
today = soup.find('span',"blind")
print(today)