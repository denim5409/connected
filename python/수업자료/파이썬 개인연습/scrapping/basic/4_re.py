import re
# abcd, book, desk
# ca?e
# care, cafe, case, cave...
# caae, cabe, cace, cade..

p = re.compile("ca.e")
# . (ca.e) : 하나의 문자를 의미 > care, cafe, case(O) | caffe (X)
# ^ (^de) : 문자열의 시작 > desk, destination (O) | fade(X)
# $ (se$) : 문자열의 끝 > case, base (O) | face (X)

def print_match(m):
    if m:
        print("m.group() : ", m.group()) #일치하는 문자열 반환
        print("m.string : ", m.string) #입력받은 문자열 반환
        print("m.start() :", m.start()) #일치하는 문자열의 시작 index
        print("m.end() : ", m.end()) # 일치하는 문자열의 끝 index
        print("m.span() : ", m.span()) # 일치하는 문자열의 시작/끝 index
    else:
        print("매칭되지 않음")

# m = p.match("care") #주어진 문자열의 처음부처 일치하는 지 확인
# m = p.match("careless") #이 경우도 일치함
# print_match(m)
#print(m.group()) #매칭되지 않으면 에러 발생

# m = p.search("good care") # 주어진 문자열 중에서 일치하는게 있는지 확인
# print_match(m)

# lst = p.findall("good care") #findall : 일치하는 모든것을 리스트 형태로 나타냄
# lst = p.findall("good care cafe") #findall : 일치하는 모든것을 리스트 형태로 반환
# print(lst)


