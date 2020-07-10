#-*- coding:utf-8 -*-
#이미지 크롤링 프로그램(네이버)
#2020-07-09
#https://h-glacier.tistory.com/entry/Python-%ED%8C%8C%EC%9D%B4%EC%8D%AC-BeautifulSoup4%EB%A5%BC-%EC%9D%B4%EC%9A%A9%ED%95%B4-%EC%9B%B9-%ED%81%AC%EB%A1%A4%EB%A7%81-%EC%98%88%EC%A0%9C-%EB%A7%8C%EB%93%A4%EC%96%B4-%EB%B3%B4%EA%B8%B0?category=856073


from bs4 import BeautifulSoup as bs
from urllib.request import urlopen
from urllib.parse import quote_plus
import urllib


# 오늘의 날씨
print('  ○>> #오늘의 #날씨 #요약 \n')
webpage = urllib.request.urlopen('https://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=%EC%84%9C%EC%9A%B8%EB%82%A0%EC%94%A8')

soup = bs(webpage, 'html.parser')
temps = soup.find('span',"todaytemp")
cast = soup.find('p',"cast_txt")
print('--> 서울 날씨 : ' , temps.get_text() , '℃' , cast.get_text())

webpage = urllib.request.urlopen('https://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=%EB%8C%80%EA%B5%AC+%EB%82%A0%EC%94%A8')
soup = bs(webpage, 'html.parser')
temps = soup.find('span',"todaytemp")
cast = soup.find('p',"cast_txt")
print('--> 대구 날씨 : ' , temps.get_text() , '℃' , cast.get_text())

webpage = urllib.request.urlopen('https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=%EB%B6%80%EC%82%B0+%EB%82%A0%EC%94%A8&oquery=%EB%8C%80%EA%B5%AC+%EB%82%A0%EC%94%A8&tqi=UrZy%2Bsp0YidssAyki54ssssssKC-251380')
soup = bs(webpage, 'html.parser')
temps = soup.find('span',"todaytemp")
cast = soup.find('p',"cast_txt")
print('--> 부산 날씨 : ' , temps.get_text() , '℃' , cast.get_text())
print('\n')
print('===================================================================\n')

#코로나19 현황 가져오기

print('>>> #오늘의 코로나 19 현황')
webpage = urllib.request.urlopen('http://ncov.mohw.go.kr/')
soup = bs(webpage, 'html.parser')
today_t = soup.find('span',"before")
today = today_t.get_text()
today = today.replace("전일대비 (+ ","")
today = today.replace(")","")
total = soup.find('span',"num")
total = total.get_text()
total = total.replace("(누적)","")
print('--> 오늘 : ' , today,'명')
print('--> 누적 : ' , total,'명')
print('\n')
print('===================================================================\n')

print('>>> #오늘의 열독률 높은 뉴스')
webpage = urllib.request.urlopen('https://news.daum.net/ranking/kkomkkom/')
soup = bs(webpage, 'html.parser')
links = soup.find_all('img')
for link in links[:-3]:
    print(link.get('alt'))
    pass
