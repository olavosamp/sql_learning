-- Query 6: Similar to 4B but instead of department ID use department name. Retrieve a list of
-- employees ordered by department name, and within each department ordered alphabetically
-- in descending order by last name.
select * from DEPARTMENTS;
select * from EMPLOYEES order by DEP_ID, L_NAME desc ;

-- Query 5E: In Query 5D limit the result to departments with fewer than 4 employees.
select
   DEP_ID,
   count(DEP_ID) as NUM_EMPLOYEES,
   avg(SALARY) as AVG_SALARY from EMPLOYEES
 group by DEP_ID having count(DEP_ID)< 4 order by AVG_SALARY;

-- Query 5D: In Query 5C order the result set by Average Salary.
select DEP_ID, count(DEP_ID) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY from EMPLOYEES
 group by DEP_ID order by AVG_SALARY;

-- Label the computed columns in the result set of Query 5B as “NUM_EMPLOYEES” and “AVG_SALARY”.
select DEP_ID, count(DEP_ID) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY from EMPLOYEES group by DEP_ID;

-- For each department retrieve the number of employees in the department, and the average
--- employees salary in the department.
select DEP_ID, count(DEP_ID) as COUNT, avg(SALARY) as SALARY_AVG from EMPLOYEES group by DEP_ID;


-- For each department ID retrieve the number of employees in the department.
select DEP_ID, count(DEP_ID) as COUNT from EMPLOYEES group by DEP_ID;

-- Retrieve a list of employees ordered in descending order by departmentID and within each
-- department ordered alphabetically in descending order by last name.
select * from EMPLOYEES order by DEP_ID, L_NAME desc ;

-- Retrieve a list of employees ordered by departmentID. 
select * from EMPLOYEES order by DEP_ID;

-- Retrieve all employees in department 5 whose salary is between 60000 and 70000
select * from EMPLOYEES where DEP_ID=5 and  SALARY between 60000 and 70000; 

-- Retrieve all employees who were born during the 1970's
select * from EMPLOYEES where B_DATE like '197%'; 


-- Retrieve all employees whose address is in Elgin,IL
select * from EMPLOYEES where ADDRESS like '%Elgin,IL%'; 

select ADDRESS from EMPLOYEES;

select * from EMPLOYEES;