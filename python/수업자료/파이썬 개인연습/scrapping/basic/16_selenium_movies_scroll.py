# import requests
# from bs4 import BeautifulSoup

# headers = {
#     "User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36",
#     "Accept-Language":"ko-KR,ko"
#     }
# url = "https://play.google.com/store/movies/top?hl=ko"
# res = requests.get(url, headers=headers)
# res.raise_for_status()
# soup = BeautifulSoup(res.text, "lxml")

# movies = soup.find_all("div", attrs={"class":"ImZGtf mpg5gc"})
# print(len(movies))

# # with open("movie.html", "w", encoding="utf8") as f:
# #     f.write(soup.prettify()) #html 문서를 예쁘게 출력

# for movie in movies:
#     title = movie.find("div", attrs={"class":"WsMG1c nnK0zc"}).get_text()
#     print(title)

from selenium import webdriver
browser = webdriver.Chrome("./basic/chromedriver.exe")
browser.maximize_window()#창 최대화

#페이지 이동
url = "https://play.google.com/store/movies/top"
browser.get(url)

#지정한 위치로 스크롤 내리기
# browser.execute_script("window.scrollTo(0,1080)") #1920*1080
# browser.execute_script("window.scrollTo(0,2080)")



import time
interval = 2

#현재 문서 높이를 가져와서 저장
prev_height = browser.execute_script("return document.body.scrollHeight")

#반복 수행
while True:
    #화면 가장 아래로 스크롤 내리기
    browser.execute_script("window.scrollTo(0,document.body.scrollHeight)")

    #페이지 로딩 대기
    time.sleep(interval)

    #현재 문서 높이를 가져와서 저장
    curr_height = browser.execute_script("return document.body.scrollHeight")

    if curr_height == prev_height:
        break
        
    prev_height = curr_height


print("스크롤 완료")
