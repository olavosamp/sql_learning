
-- Query 3B: Re-write Query 3A to have the result set include all employee names but
--  department id and department names only for male employees.
select F_NAME, L_NAME, DEP_NAME, DEPT_ID_DEP
from EMPLOYEES E
left join (
	select E2.EMP_ID, D2.DEP_NAME, D2.DEPT_ID_DEP
	from EMPLOYEES E2
	full join DEPARTMENTS D2
		on E2.DEP_ID=D2.DEPT_ID_DEP
	where E2.SEX='M') RESULT
on E.EMP_ID=RESULT.EMP_ID;
--select E2.EMP_ID, D2.DEP_NAME, D2.DEPT_ID_DEP
--from EMPLOYEES E2
--full join DEPARTMENTS D2
--	on E2.DEP_ID=D2.DEPT_ID_DEP
--where E2.SEX='M';
-- Query 3A: Perform a Full Join on the EMPLOYEES and DEPARTMENT tables and select
-- the First name, Last name and Department name of all employees.
select E.F_NAME, E.L_NAME, D.DEP_NAME
from EMPLOYEES E
full join DEPARTMENTS D
	on E.DEP_ID=D.DEPT_ID_DEP;

-- Query 2C: Re-write the query for 2A to have the result set include all the employees but 
-- have department names only for employees who were born before 1980.

select E.EMP_ID, E.L_NAME, E.B_DATE, C.DEPT_ID_DEP, C.DEP_NAME
from EMPLOYEES E
left join (
	select E2.*, D2.*
	from EMPLOYEES E2
	left join DEPARTMENTS D2
		on E2.DEP_ID=D2.DEPT_ID_DEP
	where YEAR(E2.B_DATE)<1980) C
on E.EMP_ID=C.EMP_ID
order by E.EMP_ID;

-- Left join test
select E1.EMP_ID as ID1, E2.EMP_ID  AS ID2 from
EMPLOYEES E1
left join (
	select * from EMPLOYEES order by EMP_ID limit 5) E2
	on E1.EMP_ID=E2.EMP_ID;

-- Query 2B:Re-write the query for 2A to limit the result set to include only the rows for
-- employees born before 1980.
select E.EMP_ID, E.L_NAME, YEAR(CURRENT_DATE)-YEAR(E.B_DATE) as AGE, D.DEPT_ID_DEP, D.DEP_NAME from EMPLOYEES E
left join DEPARTMENTS D
	on E.DEP_ID=D.DEPT_ID_DEP
where YEAR(E.B_DATE)<1980
order by EMP_ID;


-- Query 2A: Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables
-- and select employee id, last name, department id and department name for all employees
select E.EMP_ID, E.L_NAME, D.DEPT_ID_DEP, D.DEP_NAME from EMPLOYEES E
left join DEPARTMENTS D
	on E.DEP_ID=D.DEPT_ID_DEP;

-- Query 1B: Select the names, job start dates, and job titles of all employees who work for
-- the department number 5.
select F_NAME, START_DATE, JOB_TITLE from EMPLOYEES E
inner join JOB_HISTORY JH
	on E.EMP_ID=JH.EMPL_ID
inner join JOBS J
	on J.JOB_IDENT=JH.JOBS_ID
where JH.DEPT_ID=5;

-- Query 1A: Select the names and job start dates of all employees who work for the department
-- number 5.
select F_NAME, START_DATE from EMPLOYEES E
INNER JOIN JOB_HISTORY J
	on E.EMP_ID=J.EMPL_ID
where J.DEPT_ID=5;

-- View relevant tables
select * from JOBS;
select * from JOB_HISTORY;
select * from EMPLOYEES;
select * from DEPARTMENTS;

-- View created tables for selected current user schema
select tabschema, tabname, create_time  from syscat.tables where tabschema='WLR39485';
