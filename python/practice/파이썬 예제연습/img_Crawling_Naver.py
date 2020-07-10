#-*- coding:utf-8 -*-
#이미지 크롤링 프로그램(네이버)
#2020-07-09

from bs4 import BeautifulSoup as bs
from urllib.request import urlopen
from urllib.parse import quote_plus

#프로그램 시작, 인트로 기능
#메인 기능
while True:
    main_Url = 'https://search.naver.com/search.naver?where=image&sm=tab_jum&query='
    plus_Url = input(' >> 검색어를 입력하세요 : ')
    crawl_num = int(input(' >> 가져올 이미지 갯수를 입력하세요 : '))

    url = main_Url + quote_plus(plus_Url)
    html = urlopen(url)
    soup = bs(html, "html.parser")
    img = soup.find_all(class_='_img')

    num = 1

    for i in img:
        print('※ ', num, '개의 파일이 다운로드 되었습니다.')
        img_Url = i['data-source']
        with urlopen(img_Url) as f:
            #이미지 저장위치 + 파일이름 지정
            with open('./web1/img' + plus_Url + str(num)+ '.jpg','wb') as h:
                img = f.read()
                h.write(img)
        num += 1
        if num > crawl_num:
            break

    print('\n 크롤링이 완료되었습니다.\n')

    #종료확인
    requ = int(input('>>> 종료하시려면 1, 계속하시려면 2 : '))
    print('\n')
    if requ == 2:
        continue
    else:
        break