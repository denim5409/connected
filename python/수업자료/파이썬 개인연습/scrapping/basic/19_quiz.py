# Quiz) 부동산 매물(송파 헬리오시티) 정보를 스크래핑 하는 프로그램을 만드시오

# [조회조건]
# 1. https://daum.net 접속
# 2. '송파 헬리오시티' 검색
# 3. 다음 부동산 부분에 나오는 결과 정보

# [출력 결과]
# ================매물 1================
# 거래 : 매매
# 면적 : 84/59(공급/전용)
# 가격 : 165,000(만원)
# 동 : 214동
# 층 : 고/23

import requests
import re #정규식
from bs4 import BeautifulSoup

headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36"}

url = "https://search.daum.net/search?w=tot&DA=UME&t__nil_searchbox=suggest&sug=&sugo=15&sq=%EC%86%A1%ED%8C%8C+%ED%97%AC%EB%A6%AC%EC%98%A4&o=1&q=%EC%86%A1%ED%8C%8C+%ED%97%AC%EB%A6%AC%EC%98%A4%EC%8B%9C%ED%8B%B0"
res = requests.get(url, headers=headers)
res.raise_for_status()
soup = BeautifulSoup(res.text, "lxml")

## 정보를 제대로 가지고 오는지 확인하기 위해 html 파일을 만듬. soup 정보를 html파일로 씀
# with open("quiz.html", "w", encoding="utf8") as f:
#     f.write(soup.prettify())

data_rows = soup.find("table", attrs={"class":"tbl"}).find("tbody").find_all("tr")

for idx, row in enumerate(data_rows):
    columns = row.find_all("td")

    print("================매물 {}================".format(idx+1))
    print("거래 : " + columns[0].find("div", attrs={"class":"txt_ac"}).get_text())
    print("면적 : " + columns[1].find("div", attrs={"class":"txt_ac"}).get_text() + "(공급/전용)")
    print("가격 : " + columns[2].find("div", attrs={"class":"txt_ac"}).get_text() + "(만원)")
    print("동 : " + columns[3].find("div", attrs={"class":"txt_ac"}).get_text())
    print("층 : " + columns[4].find("div", attrs={"class":"txt_ac"}).get_text())
                