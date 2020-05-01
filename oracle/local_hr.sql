select * from tab;

select * from employees;

select * from employees where first_name like 'Alex%';
select * from employees where lower(substr(first_name,1,4)) = 'alex';

select count(*) from employees;

select count(commission_pct) from employees;

select * from employees where department_id = '50';

select first_name, hire_date from employees;
select first_name, hire_date, sysdate - hire_date from employees;
select hire_date, round(hire_date, 'month') from employees;
-- round 함수의 포맷모델로 month를 지정하였기에 특정날짜(date)를 달(month)를 기준으로 반올림한 날짜를 구한다.'
-- 일을 기준으로 16일보다 적으면 이번달 1일을, 크면 다음달 1일을 구한다.
 
 select hire_date, trunc(hire_date, 'month') from employees; -- 날짜를 버리고 모두 1일로 셋팅
 
 select first_name, sysdate, hire_date, months_between(sysdate, hire_date) from employees;
 -- months_between 함수는 날짜와 날짜 사이의 개월수를 구하는 함수이다.
 
 select first_name, sysdate, hire_date, trunc(months_between(sysdate, hire_date)) from employees;
 
 select first_name, sysdate, hire_date, add_months(hire_date, 6) from employees;
 
 select sysdate, next_day(sysdate, '월요일') from dual;
 -- 해당 요일의 가장 가까운 날짜를 반환하는 함수
 
 select hire_date, Last_day(hire_date) from employees;
 -- 해당월의 가장 마지막 날짜
 
select Last_day(sysdate) from dual;
select Last_day('2020-4-21') from dual;

select sysdate, to_char(sysdate, 'YYYY-MM-DD HH:MI:SS') from dual; -- 년 월 일 시 분 초 
  -- to_char : 날짜형 혹은 숫자형을 문자형으로 변환한다.
 
 YYYY 년도4자리
 YY 년도2자리
 MM 월 숫자2자리
 MON 월을 알파벳으로 표현
 DAY 요일 표현
 DY 요일 약어로 표현
 HH or HH12 12시간제
 HH24 24시간제
 
 select first_name, salary, to_char(salary, 'L999,999') from employees;
 -to_char
 0 자릿수를 나타내며 자릿수가 맞지 않을 경우 0으로 채운다.
 9 자릿수를 나타내며 자릿수가 맞지 않아도 채우지 않는다.
 
 select to_char(123456, '00000000'), to_char(123456, '999,999,999') from dual;
 
 -- 형변환 종류
 -- to_mumber 문자형을 숫자형으로
-- to_char 날짜형 숫자형을 문자형으로
-- to_date 문자형을 날짜형으로

select first_name, hire_date from employees
where hire_date = 20030617;

select first_name, hire_date from employees
where hire_date = '20030617';

select first_name, hire_date from employees
where hire_date = to_date(20030617, 'YYYYMMDD');
 
select to_number('20,000', '99,999') - to_number('10,000', '99,999') from dual;
-- 20000을 99,999형식으로 맞추고 10000을 뺀 값을 출력함.

select '100000' - '50000'from dual;

select * from employees;

select department_id, avg(salary) as "연봉평균"
from employees
group by department_id
order by "연봉평균" desc;

select department_id, job_id, count(*), sum(salary)
from employees
group by department_id, job_id
having sum(salary) > 13000
order by department_id, job_id;

select first_name, salary, commission_pct,
        nvl(commission_pct, 0),
        salary * 12 + nvl(commission_pct, 0)
from employees;

-- 자바에서 (a > b ) ? 'T' : 'F';
-- nvl2(e1, e2, e3) : e1이 null이면 e2실행, 아니면 e3실행

select first_name, salary, commission_pct,
        nvl2(commission_pct, salary * 12 + commission_pct, salary *12),
        salary * 12 + nvl(commission_pct, 0)
from employees
order by job_id;

select nullif('A', 'A'), nullif('A', 'B')
from dual;

-- coalesce : 인수 중에서 null이 아닌 첫번째 인수를 반환하는 함수
select first_name, salary, commission_pct,
        coalesce(commission_pct, salary, 0)
from employees
order by job_id;

select distinct department_id from employees;

-- decode : if / else if와 동일개념
select first_name, department_id,
        decode(department_id,
        10, 'ACCOUTING',
        20, 'RESEARCH',
        30, 'SALES',
        40, 'OPERATIONS',
        'DEFAULT') as dname
from employees
order by department_id;

select first_name, department_id,
        case
            when department_id = 10 then 'ACCOUTING'
            when department_id = 20 then 'RESEARCH'
            when department_id = 30 then 'SALES'
            when department_id = 40 then 'OPERATIONS'
            else 'DEFAULT'
        end as dname
from employees
order by department_id;

select first_name, department_id
from employees
where department_id = 
    (
        select department_id 
        from employees 
        where first_name = 'Steven' and last_name = 'King'
    );

select first_name, department_id
from employees
where department_id in 
    (
        select department_id 
        from employees 
        where first_name = 'Steven'
    );
    
-- 최소 급여를 받는 사원의 이름, 담당업무, 급여 출력
select * from employees order by salary;

select first_name, last_name, job_id, salary
from employees
where salary = 
    (
        select 
        min(salary)
        from employees
    );
    
select department_id, min(salary)
from employees
group by department_id
having min(salary) > (select min(salary) from employees where department_id = 30);
    
    