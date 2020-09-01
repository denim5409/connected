# project) 웹 스크래핑을 이용하여 나만의 비서를 만드시오

# [조건]
# 1. 네이버에서 오늘 서울의 날씨정보를 가져온다
# 2. 헤드라인 뉴스 3건을 가져온다
# 3. IT 뉴스 3건을 가져온다
# 4. 해커스 어학원 홈페이지에서 오늘의 영어 회화 지문을 가져온다

import requests
from bs4 import BeautifulSoup
import re

def create_soup(url):
    res = requests.get(url)
    res.raise_for_status()
    soup = BeautifulSoup(res.text, "lxml")
    return soup

def print_news(index, title, link):
        print("{}. {}".format(index+1, title))
        print("  (링크 : {})".format(link))


def scarpe_weather():
    url = "https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EB%82%A0%EC%94%A8"
    #=======이 부분을 모두 함수로 변경함============
    # res = requests.get(url)  #이 부분을 모두
    # res.raise_for_status()
    # soup = BeautifulSoup(res.text, "lxml")
    #=============================================
    soup = create_soup(url)

    # 흐림, 어제보다 00도 높아요
    cast = soup.find("p", attrs={"class":"cast_txt"}).get_text()

    # 현재 00도 (최저 00도 / 최고 00도)
    todaytemp = soup.find("p", attrs={"class":"info_temperature"}).get_text().replace("도씨","")
    mintemp = soup.find("span", attrs={"class":"min"}).get_text()
    maxtemp = soup.find("span", attrs={"class":"max"}).get_text()

    # 오전 강수확률 00% / 오후 강수확률 00%
    rain_rate1 = soup.find("span", attrs={"class":"point_time morning"}).get_text().strip()
    rain_rate2 = soup.find("span", attrs={"class":"point_time afternoon"}).get_text().strip()

    # 미세먼지 00단위 좋음
    # 초미세먼지 00단위 좋음
    dust = soup.find("dl", attrs={"class":"indicator"})
    pm10= dust.find_all("dd")[0].get_text()
    pm25 = dust.find_all("dd")[1].get_text()

    print("[오늘의 날씨]")
    print(cast)
    print("현재 {} (최저 {} / 최고 {})".format(todaytemp,mintemp, maxtemp))
    print("오전 {} / 오후 {}".format(rain_rate1, rain_rate2))
    print()
    print("미세먼지 {}".format(pm10))
    print("초미세먼지 {}".format(pm25))
    print()


# [헤드라인 뉴스]
# 1. 무슨 무슨 일이....
#    (링크 : https://...)
# 2. 무슨 무슨 일이....
#    (링크 : https://...)
# 3. 무슨 무슨 일이....
#    (링크 : https://...)

def scrape_headline_news():
    print("[헤드라인 뉴스]")
    url = "https://news.naver.com"
    soup = create_soup(url)
    news_list = soup.find("ul", attrs={"class":"hdline_article_list"}).find_all("li", limit=3)

    for index, news in enumerate(news_list):
        title = news.find("a").get_text().strip()
        link = url + news.find("a")["href"]
        print_news(index, title, link)
    print()

# [IT 뉴스]
# 1. 무슨 무슨 일이....
#    (링크 : https://...)
# 2. 무슨 무슨 일이....
#    (링크 : https://...)
# 3. 무슨 무슨 일이....
#    (링크 : https://...)

def scrape_it_news():
    print("[IT 뉴스]")
    url = "https://news.naver.com/main/list.nhn?mode=LS2D&mid=shm&sid1=105&sid2=230"
    soup = create_soup(url)
    news_list = soup.find("ul", attrs={"class":"type06_headline"}).find_all("li", limit=3)

    for index, news in enumerate(news_list):
        a_idx = 0
        img = news.find("img")
        if img:
            a_idx = 1
        a_tag = news.find_all("a")[a_idx]
        title = a_tag.get_text().strip()
        link = news.find("a")["href"]
        print_news(index, title, link)
    print()



# [오늘의 영어 회화]
# (영어 지문)
# Jason : How do you think bla bla...?
# Kim : Well, I think....

# (한글 지문)
# Json : 어쩌고 저쩌고...
# Kim : 글쎄요, ㅇㅇㅇㅇ

def scrape_english():
    print("[오늘의 영어 회화]")
    url = "https://www.hackers.co.kr/?c=s_eng/eng_contents/I_others_english&keywd=haceng_submain_lnb_eng_I_others_english&logger_kw=haceng_submain_lnb_eng_I_others_english"
    soup = create_soup(url)
    sentences = soup.find_all("div", attrs={"id":re.compile("^conv_kor_t")})
    print("(영어 지문)")
    for sentence in sentences[len(sentences)//2:]:
        print(sentence.get_text().strip())

    print()
    print("(한글 지문)")
    for sentence in sentences[:len(sentences)//2]:
        print(sentence.get_text().strip())

    print()


if __name__ == "__main__":
    scarpe_weather() #오늘의 날씨 정보 가져오기
    scrape_headline_news()
    scrape_it_news()
    scrape_english()
