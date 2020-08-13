import requests
from bs4 import BeautifulSoup

url = "https://comic.naver.com/webtoon/weekday.nhn"
res = requests.get(url)
res.raise_for_status()

soup = BeautifulSoup(res.text, "lxml")
# print(soup.title)
# print(soup.title.get_text())

# print(soup.a) #soup 객체에서 처음 발견되는 a 엘리먼트 출력
# print(soup.a.attrs) #a 엘리먼트 속성 정의
# print(soup.a.attrs["href"])

# print(soup.find("a", attrs={"class":"Nbtn_upload"})) #클래스값이 Nbtn_upload인 a 엘리먼트를 찾아줘
# print(soup.find(attrs={"class":"Nbtn_upload"})) #클래스값이 Nbtn_upload인 어떤 엘리먼트를 찾아줘

# print(soup.find("li", attrs={"class":"rank01"}))
# rank1 = soup.find("li", attrs={"class":"rank01"})
# print(rank1.a)
# print(rank1.a.attrs["title"])
# print(rank1.a.get_text())
# print(rank1.next_sibling)
# rank2 = rank1.next_sibling.next_sibling
# rank3 = rank2.next_sibling.next_sibling
# print(rank3.a.get_text())
# rank2 = rank3.previous_sibling.previous_sibling
# print(rank2.a.get_text())
# print(rank1.parent)
# rank2 = rank1.find_next_sibling("li")
# print(rank2.a.get_text())
# rank3 = rank2.find_next_sibling("li")
# print(rank3.a.get_text())
# rank2 = rank3.find_previous_sibling("li")
# print(rank2.a.get_text())
# rank1.find_next_siblings("li")

# webtoon = soup.find("a", text="중증외상센터 : 골든 아워-35화 : 길바닥에서")
# print(webtoon)







