use test;
select * from test;
desc test;
alter table test rename column today to wdate;

select rpad(789,10,'*');
select replace('jack','j',mybl);

select now()"날짜";
select sysdate() "날짜sysdate";
select date_format(sysdate(), '%Y-%m-%d') ;
select str_to_date('29 09 2044', '%d %m %Y') "날짜";
select str_to_date('29 09 2044', '%d-%m-%Y');

select cast('12.2345' as decimal(10,1)) "결과";
select round('98.72345', 1) "결과";
select current_date();
select current_time();



select @rn := @rn + 1 rn, e.* from emp e, (select @rn:=0) my;

select e.empno, e.ename, e.job, d.dname, d.loc
from emp e, dept d where e.deptno = d.deptno;


select * from emp where job = 'manager';

select e.empno, e.ename, e.job, d.dname, d.loc
from emp e inner join dept d on e.deptno = d.deptno 
where job = 'manager';

-- 서브쿼리 테이블역할 inlineView서브쿼리, 새로운가짜필드스칼라서브쿼리,
-- 조건절 where조건값서브쿼리
select * from emp; -- 첫번째 smith사번확인후 참조여부 7369일반사원

-- 관리자 아닌사람, 관리자인사람
select * from emp where empno in (select mgr from emp);
select * from emp where job in ('manager', 'salesman');

select * from emp where empno not in (select ifnull(mgr,0) from emp);

explain select * from emp where empno not in (select ifnull(mgr,0) from emp);


explain select * from emp;
show index from emp;

select * from test;
show index from test;
create index idx_name on test(name);
commit;
show index from test;

use naver;
select * from goods;


















