-- show user;

-- show user;

-- select * from dba_users;

-- 데이터베이스 생성 = 유저 생성
create user SAMPLE identified by 1234
default tablespace users -- 그냥 적어준다.
temporary tablespace temp; -- 그냥 적어준다.
-- 데이터베이스의 권한을 준다.
grant connect, resource, dba to SAMPLE;

-- 데이터베이스 삭제 = 유저 삭제
drop user SAMPLE;

------------------------------------------------------
--exam
create user exam identified by 1234
default tablespace users
temporary tablespace temp; 

grant connect, resource, dba to exam;

drop user exam CASCADE;

------------------------------------------------------

-- study

create user study identified by 1234
default tablespace users
temporary tablespace temp; 

grant connect, resource, dba to study;


--------------------------------------------------------

--HR계정 풀기
alter user hr identified by 1234 account unlock;

--------------------------------------------------------
create user EXAM identified by 1234
default tablespace users
temporary tablespace temp;

grant connect, resource, dba to EXAM;
