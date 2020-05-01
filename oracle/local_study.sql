alter user study identified by 1234; --비밀번호변경

-- 테이블생성
-- 회원관련
create table member (
id varchar2(50) not null,
passwd varchar2(50) not null,
name  varchar2(50) not null,
phone  varchar2(50) not null
);

select * from tab;
select * from member;

insert into member values ('hong','1234','홍길동','010-1111-1111');
insert into member values ('kim','1234','김철수','010-2222-2222');

insert into member (id, passwd,n','3333','윤윤','010-3333-3333');
insert into member (phone, passwd, name, id) values ('010 name, phone) values ('yoo-4444-4444','4444','황황','hwang');

update member set passwd = '0000' where id = 'hong';
update member set passwd = '9999';

delete from member where id = 'hong';
delete from member;

create table product (
cate varchar2(50) not null,
pname varchar2(50) not null,
price number not null
);

insert into product values ('가전','벽결이TV','100');
insert into product values ('가전','TV',50);
select * from product;

insert into product values ('가구','침대','150');
update product set price = '200' where pname = 'TV';
delete from product where pname = 'TV';

create table sungjuk (
name varchar2(50) not null,
kor number not null,
eng number not null,
mat number not null
);

select * from sungjuk;
insert into sungjuk values ('홍길동','100','90','80');


--------------------------------------------------------------
drop table customers cascade constraints;
drop table orderitems cascade constraints;
drop table orders cascade constraints;
drop table products cascade constraints;
drop table vendors cascade constraints;

create table customers (
cust_id char(10) not null,-- 고객id
cust_name char(50) not null, --고객이름
cust_address char(50) null, --고객주소
cust_city char(50) null, --시/도
cust_state char(5) null, --주
cust_zip char(10) null, --우편번호
cust_country char(50) null, --국가
cust_contact char(50) null, --연락처이름
cust_email char(255) null --이메일
);


create table orderitems (
order_num number not null,-- 주문번호
order_item number not null, --주문아이템
prod_id char(10) not null, --상품id
quantity number not null, --수량
item_price number(8,2) not null --아이템가격
);

create table orders (
order_num number not null,-- 주문번호
order_date date not null, --주문날짜
cust_id char(10) not null --고객id
);

create table products (
prod_id char(10) not null,-- 상품id
vend_id char(10) not null, --벤더id
prod_name char(255) not null, --상품명
prod_price number(8,2) not null, --상품가격
prod_desc clob null --???
);


create table vendors (
vend_id char(10) not null,-- 상품id
vend_name char(50) not null, --벤더id
vend_address char(50) null, --상품명
vend_city char(50) null, --상품가격
vend_state char(5) null, --???
vend_zip char(10) null, --???
vend_country char(50) null --???
);

--drop table 테이블명 : 그냥 지우는거
--drop table 테이블명 cascade constrain :  관계 무시하고 지우는거.


alter table customers add primary key (cust_id);
alter table orderitems add primary key (order_num, order_item);
alter table orders add primary key (order_num);
alter table products add primary key (prod_id);
alter table vendors add primary key (vend_id);

alter table orderitems add constraint FK_OrderItems_Orders foreign key (order_num) references orders (order_num);
alter table orderitems add constraint FK_OrderItems_Products foreign key (prod_id) references products (prod_id);
alter table orders add constraint FK_Orders_Costomers foreign key (cust_id) references customers (cust_id);
alter table products add constraint FK_Products_Vendors foreign key (vend_id) references vendors (vend_id);

--제약조건
--1. primary key : 중복허용안함, null값 허용안함.
--2. null 허용, 허용안함


insert into customers values ('1000000001','Village Toys','200 Maple Lane','Detroit','MI','44444','USA','John Smith','sales@Villagetoys.com');
insert into customers values ('1000000002','Kids Place','333 Suth Lake Drive','Columbus','OH','43333','USA','Michelle Green','');
insert into customers values ('1000000003','Fun4All','1 Sunny Place','Muncie','IN','42222','USA','Jim Jones','jjones@fun4all.com');
insert into customers values ('1000000004','Fun4All','829 Riverside Drive','Phoenix','AZ','88888','USA','Denise L. Stephens','dstephens@fun4all.com');
insert into customers values ('1000000005','The Toy Store','4545 53rd Street','Chicago','IL','54545','USA','Kim Howard','');

insert into vendors values ('BRS01','Bears R Us','123 Main Street','Bear Town','MI','44444','USA');
insert into vendors values ('BRE02','Bear Emporium','500 Park Street','Anytown','OH','44333','USA');
insert into vendors values ('DLL01','Doll House Inc.','555 High Street','Dollsville','CA','99999','USA');
insert into vendors values ('FRB01','Furball Inc.','1000 5th Avenue','New York','NY','11111','USA');
insert into vendors values ('FNG01','Fun and Games','42 Galaxy Road','London','','N16 6PS','England');
insert into vendors values ('JTS01','Jouets et ours','1 Rue Amusement','Paris','','45678','France');

insert into products values ('BR01','BRS01','8 inch teddy bear','5.99','8 inch teddy bear, comes with cap and jacket');
insert into products values ('BR02','BRS01','12 inch teddy bear','8.99','12 inch teddy bear, comes with cap and jacket');
insert into products values ('BR03','BRS01','18 inch teddy bear','11.99','18 inch teddy bear, comes with cap and jacket');
insert into products values ('BNBG01','DLL01','Fish bean bag toy','3.49','Fish bean bag toy, complete with bean bag worms with which to feed it');
insert into products values ('BNBG02','DLL01','Bird bean bag toy','3.49','Bird bean bag toy, eggs are not included');
insert into products values ('BNBG03','DLL01','Rabbit bean bag toy','3.49','Rabbit bean bag toy, comes with bean bag carrots');
insert into products values ('RGAN01','DLL01','Raggedy Ann','4.99','18 inch Raggedy Ann doll');
insert into products values ('RYL01','FNG01','King doll','9.49','12 inch king doll with royal garments and crown');
insert into products values ('RYL02','FNG01','Queen doll','9.49','12 inch queen doll whth royal garments and crown');

insert into orders values ('20005','04/05/01','1000000001');
insert into orders values ('20006','04/01/12','1000000003');
insert into orders values ('20007','04/01/30','1000000004');
insert into orders values ('20008','04/02/03','1000000005');
insert into orders values ('20009','04/02/08','1000000001');


insert into orderitems values ('20005','1','BR01','100','5.49');
insert into orderitems values ('20005','2','BR03','100','10.99');
insert into orderitems values ('20006','1','BR01','20','5.99');
insert into orderitems values ('20006','2','BR02','10','8.99');
insert into orderitems values ('20006','3','BR03','10','11.99');
insert into orderitems values ('20007','1','BR03','50','11.49');
insert into orderitems values ('20007','2','BNBG01','100','2.99');
insert into orderitems values ('20007','3','BNBG02','100','2.99');
insert into orderitems values ('20007','4','BNBG03','100','2.99');
insert into orderitems values ('20007','5','RGAN01','50','4.99');
insert into orderitems values ('20008','1','RGAN01','5','4.99');
insert into orderitems values ('20008','2','BR03','5','11.99');
insert into orderitems values ('20008','3','BNBG01','10','3.49');
insert into orderitems values ('20008','4','BNBG02','10','3.49');
insert into orderitems values ('20008','5','BNBG03','10','3.49');
insert into orderitems values ('20009','1','BNBG01','250','2.49');
insert into orderitems values ('20009','2','BNBG02','250','2.49');
insert into orderitems values ('20009','3','BNBG03','250','2.49');


select * from products;
--selelct 필드명 from 테이블명;
select prod_name from products;
select vend_id, prod_name from products;
select prod_name from products order by prod_name; --order by : 해당 필드명 순으로 정렬
select prod_name from products order by prod_name asc; --order by : 해당 필드명 순으로 정렬(asc는 생략가능)
select prod_name from products order by prod_name desc;--desc : 내림차순 정렬

select prod_id, prod_price, prod_name from products order by prod_price, prod_name desc; --prod_price 뒤에 아무것도 없으니 asc생략되어있음.
select prod_id, prod_price, prod_name from products order by 2, 3;
select * from products order by prod_price desc, prod_name;

select * from customers;
select * from orders;
select * from orderitems;
select * from vendors;

--주석 : 한줄주석

/*
조건 : 연산자
= sql에서는 같다.(자바에서는 대입)
<> 같지 않다.
!= 같지 않다.
< 작다
<= 작거나 같다
> 크다 
>= 크거나 같다
between  (where 필드명 between a값 and b값 ) a와 b 사이
IS NULL null인것들
*/

select prod_name, prod_price from products where prod_price < 10;
select prod_name, prod_price from products where prod_price <= 10;
select prod_name, prod_price from products where prod_price between 2 and 5;
select prod_name, prod_price from products where prod_price IS NULL;
select * from vendors where vend_state IS NULL;

select prod_name, prod_price from products where vend_id = 'DLL01' or vend_id = 'BRS01' and prod_price >= 10;
select prod_name, prod_price from products where (vend_id = 'DLL01' or vend_id = 'BRS01') and prod_price >= 10;
select prod_name, prod_price from products where vend_id = 'DLL01' or (vend_id = 'BRS01' and prod_price >= 10);

select prod_name, prod_price from products where vend_id IN ('DLL01', 'BRS01') order by prod_name;
select prod_name, prod_price from products where vend_id = 'DLL01' or vend_id = 'BRS01' order by prod_name;

select prod_name from products where NOT vend_id = 'DLL01' order by prod_name;
select prod_name from products where NOT vend_id <> 'DLL01' order by prod_name;
select prod_name from products where NOT vend_id != 'DLL01' order by prod_name;

select prod_id, prod_name
from products
where prod_name like 'Fish%';

--와일드 카드를 사용한 필터링(반드시 like를 써야 한다)
-- % : null 포함 모든 글자
-- _ : 글자 한자

select prod_id, prod_name
from products
where prod_name like '%bean bag%';

select prod_id, prod_name
from products
where prod_name like '__ inch teddy bear';

select prod_id, prod_name
from products
where prod_name like '__ inch teddy bear%';

select prod_id, prod_name
from products
where prod_name like '% inch teddy bear%';

select cust_contact
from customers
where cust_contact like '[JM]%'
order by cust_contact;
commit;


set autocommit on;
set autocommit off;

show autocommit;

select concat(vend_name, vend_country)
from vendors
order by vend_name;

select vend_name || ' (' || vend_country || ')'
from vendors
order by vend_name;
--|| : 필드 결합

select vend_name || '/ ' || vend_country as "결과"
from vendors
order by vend_name;
-- as : 필드명(생략가능) 가급적 생략하지 말고, 앞에는 ()로 묶어 주는게 좋음.

select vend_name || '/ ' || vend_country as result
from vendors
order by vend_name;

select vend_name || '/ ' || vend_country result
from vendors
order by vend_name;

select (vend_name || '/ ' || vend_country) result
from vendors
order by vend_name;

select (vend_name || '/ ' || vend_country) as "결  과"
from vendors
order by vend_name;


select vend_name, vend_country as vend_title
from vendors
order by vend_name;

select rtrim(vend_name) as name, rtrim(vend_country) as vend_title
from vendors
order by vend_name;
--ltrim : 왼쪽 공백제거
--rtrim : 오른쪽 공백제거
--trim : 양쪽 공백제거

-- and : 
-- or : 
-- not : 



select (rtrim(vend_name) || '(' || rtrim(vend_country) || ')') as vend_title
from vendors
order by vend_name;

select 
        prod_id,
        quantity,
        item_price, 
        quantity + item_price as "결과1",
        quantity - item_price as "결과2",
        quantity * item_price as "결과3",
        quantity / item_price as "결과4"     
from orderitems
where order_num = '20008';


create table test_sj (
name varchar2(50) not null,
sname varchar2(50) not null,
kor number not null,
eng number not null,
mat number not null
);
select * from test_sj;

insert into test_sj values ('이승엽','중간고사','75','63','94');
insert into test_sj values ('박찬호','중간고사','78','88','93');
insert into test_sj values ('박지성','중간고사','82','98','92');
insert into test_sj values ('류현진','중간고사','91','96','87');
insert into test_sj values ('손흥민','중간고사','52','95','86');
commit;

select 
        name,
        sname,
        kor,
        eng,
        mat,
        (kor + eng + mat) as tot,
        (kor + eng + mat) / 3 as avg
from test_sj;

select vend_name, upper(vend_name) as vend_name_upcase
from vendors
order by vend_name;

select vend_name, upper(vend_name), lower(vend_name)
from vendors
order by vend_name;


select substr(vend_name,1,5), upper(vend_name) as vend_name_upcase
from vendors
order by vend_name;

select vend_name
from vendors
where substr(vend_name,2,3) = 'ear'
order by vend_name;

select vend_name
from vendors
where vend_name like '_ear%'
order by vend_name;

select LENGTH(trim(vend_name)), substr(vend_name,1,3), upper(vend_name) as vend_name_upcase
from vendors
order by vend_name;

select LENGTH(vend_name), substr(vend_name,1,3), upper(vend_name) as vend_name_upcase
from vendors
order by vend_name;

select LENGTH(substr(vend_name,1,3)), substr(vend_name,1,3), upper(vend_name) as vend_name_upcase
from vendors
order by vend_name;

select substr(vend_name,1,3),upper(TRIM(vend_name)) as vend_name_upcase, TRIM(vend_name)
from vendors
order by vend_name;

select * from products;

select avg(prod_price) as avg_price
from products;

select avg(prod_price) as avg_price
from products
where vend_id = 'DLL01';

select count(*) from customers;
select count(cust_email) from customers;


select trim(prod_name), prod_price from products;

select max(prod_price) as max_price
from products;

select sum(quantity) as item_ordered
from orderitems
where order_num = 20005;

select *
from orderitems
where order_num = 20005;

select sum(quantity * item_price) as total_price
from orderitems
where order_num = 20005;

select distinct prod_price --중복값 제거
from products;

select prod_price
from products;

select distinct prod_price
from products
where vend_id = 'DLL01';

select avg(distinct prod_price) avg_price
from products
where vend_id = 'DLL01';

select 
        count(*) as count,
        min(prod_price) as min_price,
        max(prod_price) as max_price,
        avg(prod_price) as avg_price
from products;


select * from test_sj;

select 
        count(*) as count,
        min(kor) as kor_min,
        max(kor) as kor_max,
        avg(kor) as kor_avg
from test_sj;

select * from test_sj order by name;
select * from test_sj order by sname, name;
select name, sname, kor, eng, mat, (kor+eng+mat) as tot from test_sj order by sname desc, name asc;

select count(kor) as sum, avg(kor) as avg 
from test_sj
where sname = '중간고사';

select * 
from test_sj
where sname = '중간고사'
order by eng desc;

-- dual 테이블 : 임시테이블, 테스트 용도로 사용
desc dual;
select * from dual;
select upper('korea') from products;
select upper('korea') from dual; 
select length('오라클') from dual; -- 글자 길이
select initcap('welcome to oracle') from dual; --첫글자 대문자로 변경
select instr('welcome to oracle', 'o') from dual; -- o라는 글자가 처음 나온 위치
select instr('welcome to oracle', 'o', 6, 2) from dual; -- 6번째 글자부터 2번째 나오는 o의 위치
select lpad('oracle', 20, '#') from dual;
select rpad('oracle', 20, '#') from dual;
select -10, abs(-10) from dual;
select 34.5678, floor(34.5678) from dual; -- 소수점 이하 버림
select 34.5678, round(34.5678) from dual; -- 소수점 첫째자리에서 반올림, 35
select 34.5678, round(34.4678) from dual; -- 소수점 첫째자리 반올림 안됨, 34
select 34.5678, round(34.4678,1) from dual; -- 소수점 둘째자리에서 반올림, 표현은 소수점 첫째자리까지. 34.5
select 34.5678, round(34.4678,2) from dual; -- 소수점 셋째자리에서 반올림, 표현은 둘째자리까지. 34.47
select 34.5678, round(34.4678,-1) from dual; -- 첫째자리 반올림. 30
select trunc(34.5678, 2), trunc(34.5678, -1), trunc(34.5678) from dual; -- 소수점이하 특정위치에서 버림
select mod(27,2), mod(27,5), mod(27,7) from dual; -- 나누고 난 나머지

select sysdate from dual; -- 시스템의 현재 날짜
select 
    sysdate - 1, -- 어제
    sysdate, -- 오늘
    sysdate + 1 -- 내일
from dual;



select * from orders;


select order_num, to_char(order_date, 'YYYY')
from orders
where to_number(to_char(order_date, 'YYYY')) = 2004;

select order_num, order_date
from orders
where year(order_date) = 2004; -- 원래 연도만 뽑는 함수가 먹히는데 oracle에서는 안됨.

select order_num, order_date
from orders
where order_date between '2004-01-01' and '2004-12-31';


-----------------------------------------------------------------------------------------------
*그룹화 group by : 집계함수 이용

select * from products;

select count(*) as num_count
from products
where vend_id = 'DLL01';

select vend_id, count(*) as num_prods
from products
group by vend_id;

사용순서
--select
--from
--where
--group by -- 무엇으로 묶을 것인가
--having -- 묶은것에 대한 조건
--order by


select * from orders;

select cust_id, count(*) as num_prods
from orders
group by cust_id
having count(*) >= 2;

select vend_id, count(*) as num_prods
from products
where prod_price >= 4
group by vend_id
having count(*) >=2;

select order_num, count(*) as items
from orderitems
group by order_num
having count(*) >=3;

select order_num, count(*) as items
from orderitems
group by order_num
having count(*) >=3
order by items, order_num; -- items는 앞에서의 별칭, order by는 앞에서 이미 결과를 도출한다음 정렬함

-- primary key : 기본키. 중복허용안함. null값 허용안함
-- foreign key : 참조키. 

select cust_id
from orders
where order_num in (20007,20008);
-- 같은 의미로 order_num = 20007 or order_num = 20008

select cust_id
from orders
where order_num in (
                    select order_num
                    from orderitems
                    where prod_id = 'RGAN01'
                    );

select cust_name, cust_contact
from customers
where cust_id in (
                select cust_id
                from orders
                where order_num in(select order_num from orderitems where prod_id = 'RGAN01')
                );

select prod_name, vend_id, 
        (
            select vend_name 
            from vendors 
            where vendors.vend_id = products.vend_id
        ) as vend_name
from products;

select prod_name, vend_id, 
        (
            select vend_name || '(' || vend_country || ')'
            from vendors 
            where vendors.vend_id = products.vend_id
        ) as vend_name
from products;


select * from orders;

select order_num, cust_id,
    (
        select cust_name
        from customers
        where orders.cust_id = customers.cust_id
    ) as cust_name
from orders;

select cust_name, cust_state,
    (
        select count(*) 
        from orders 
        where orders.cust_id = customers.cust_id
    ) as orders
from customers
order by cust_name;

-- 조인방식
-- 동등조인
select vend_name, prod_name, prod_price
from vendors, products
where vendors.vend_id = products.vend_id;

select v.vend_name, p.prod_name, p.prod_price
from vendors v, products p
where v.vend_id = p.vend_id;

-- 내부조인(양쪽에 공통된 것들만 가지고 옴)
select v.vend_name, p.prod_name, p.prod_price
from vendors v inner join products p on v.vend_id = p.vend_id;

select p.prod_name, v.vend_name, p.prod_price, o.quantity
from orderitems o, products p, vendors v
where p.vend_id = v.vend_id
        and o.prod_id = p.prod_id
        and order_num = 20007;
        
select cust_name, cust_contact
from customers
where cust_id in (
                select cust_id
                from orders
                where order_num in (
                                select order_num
                                from orderitems
                                where prod_id = 'RGAN01'));

select cust_name, cust_contact
from customers, orders, orderitems
where customers.cust_id = orders.cust_id
    and orderitems.order_num = orders.order_num
    and prod_id = 'RGAN01';



select cust_id, cust_name, cust_contact
from customers
where cust_name = (
                    select cust_name
                    from customers
                    where cust_contact = 'Jim Jones');
-- 자체조인
select c1.cust_id, c1.cust_name, c1.cust_contact
from customers c1, customers c2
where c1.cust_name = c2.cust_name
    and c2.cust_contact = 'Jim Jones';

-- 외부조인(한쪽 테이블에 있는 내용을 무조건 다 나오게 한다)
-- left outer join : 왼쪽에 있는 모든것을 보여줌
-- right outer join : 오른쪽에 있는 모든것을 보여줌

select customers.cust_id, orders.order_num
from customers left outer join orders on customers.cust_id = orders.cust_id;

select customers.cust_id, orders.order_num
from customers right outer join orders on customers.cust_id = orders.cust_id;

select customers.cust_id, count(orders.order_num) as num_ord
from customers inner join orders on customers.cust_id = orders.cust_id
group by customers.cust_id;

select customers.cust_id, count(orders.order_num) as num_ord
from customers left outer join orders on customers.cust_id = orders.cust_id
group by customers.cust_id;

select cust_name, cust_contact, cust_email
from customers
where cust_state in ('IL','IN','MI');

select cust_name, cust_contact, cust_email
from customers
where cust_state in ('IL','IN','MI')
union -- 중복된 행 제거
select cust_name, cust_contact, cust_email
from customers
where cust_name = 'Fun4All';


select cust_name, cust_contact, cust_email
from customers
where cust_state in ('IL','IN','MI')
union all -- 중복된 행 모두 가져옴
select cust_name, cust_contact, cust_email
from customers
where cust_name = 'Fun4All';

create table custcopy
as select * from customers;
-- primary key 제약조건은 복사안됨.

select * from custcopy;

update custcopy
set cust_email = 'kim@hetoystrore.com'
where cust_id = '1000000005';

update custcopy
set cust_email = 'kim@hetoystrore.com';

commit;
update custcopy
set cust_contact = 'Sam Roberts',
    cust_email = 'kim4@hetoystrore.com'
where cust_id = '1000000004';

delete from custcopy
where cust_id = '1000000005';
commit;
