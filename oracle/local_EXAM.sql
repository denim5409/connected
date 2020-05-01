create table member (
no number not null,
id varchar2(50)not null,
name varchar2(50)not null
);

alter table member add unique (no);
alter table member add primary key (id);
create sequence seq_no start with 1 increment by 1 minvalue 1;

drop table sangpum;

create table sangpum (
no number not null,
s_id varchar2(50)not null,
cate varchar2(50)not null,
sname varchar2(50)not null,
price number not null
);

alter table sangpum add unique (no);
alter table sangpum add primary key (s_id);
create sequence s_no start with 1 increment by 1 minvalue 1;



-------------------------------------------------------------------------
select cust_name, cust_contact, prod_id
from customers, orders, orderitems
where customers.cust_id = orders.cust_id
        and orderitems.order_num = orders.order_num
        and prod_id = 'RGAN01';

-- drop view v_coustomers_orders_orderitems; view 삭제

-- view 생성
create view v_coustomers_orders_orderitems
as
    select cust_name, cust_contact, prod_id
    from customers, orders, orderitems
    where customers.cust_id = orders.cust_id
            and orderitems.order_num = orders.order_num;

-- view를 사용한 조회
select cust_name, cust_contact
from v_coustomers_orders_orderitems
where prod_id = 'RGAN01';


-- 저장프로시저

select count(*) from customers;


create procedure proc_customers_orderitems
as
    var1 int;
    var2 int;
begin
    select count(*) into var1 from customers;  -- into 변수명 : 실행결과가 변수명안으로 들어감
    select count(*) into var2 from orderitems;
    dbms_output.put_line (var1 + var2); -- 두 변수를 더해서 화면상에 출력해라
end;

set serveroutput on;
execute proc_customers_orderitems;



create or replace procedure proc_sample01
as
    v_new_price number;
begin
    select prod_price into v_new_price from products where prod_id = 'BR01';
    v_new_price := v_new_price + 100;
    dbms_output.put_line (v_new_price);
end proc_sample01;

set serveroutput on;
execute proc_sample01();

-- drop procedure proc_customers_orderitems;


-- trigger : 자동으로 처리해 주는 거

select * from customers;
insert into customers values (
'1000000006',
'a111',
'a222',
'a333',
'AA',
'11111',
'AAA',
'a444','');

select * from customers;

update customers set cust_contact = 'a555' where cust_id = '1000000006';

select * from customers;

delete from customers where cust_id = '1000000006';
select * from customers;


create table customers_delete (
cust_id char(10) not null,-- 고객id
cust_name char(50) not null, --고객이름
cust_address char(50) null, --고객주소
cust_city char(50) null, --시/도
cust_state char(5) null, --주
cust_zip char(10) null, --우편번호
cust_country char(50) null, --국가
cust_contact char(50) null, --연락처이름
cust_email char(255) null, --이메일
deletedate date
);

select * from customers_delete;

-- * 트리거 : 테이블에 부착

create trigger trg_deletecustomers
    after delete
    on customers
    for each row
begin
    insert into customers_delete values (
    :old.cust_id,
    :old.cust_name,
    :old.cust_address,
    :old.cust_city,
    :old.cust_state,
    :old.cust_zip,
    :old.cust_country,
    :old.cust_contact,
    :old.cust_email,
    sysdate());
end;
    
    
drop table customers cascade constraints;
drop table customers_delete cascade constraints;
drop table orders cascade constraints;
drop table orderitems cascade constraints;
drop table products cascade constraints;
drop table vendors cascade constraints;
drop table member cascade constraints;
drop table sangpum cascade constraints;


create table member (
id varchar2(50) not null,
passwd varchar2(50) not null,
name varchar2(50) not null
);
    
create table job (
job_id varchar2(50) not null,
job_name varchar2(50) not null,
id varchar2(50) not null
);

select * from member;

insert into member values ('yoon', '2222','윤선생');

insert into job values ('jo1','군인','hong');
insert into job values ('jo2','개발자','kim');
insert into job values ('jo3','의사','jung');
