/* Show the first 10 rows of the staff table */
select * from staff limit 10;

/* Sum the total amount of salary paid to staff */
select sum(salary) from staff;

/* Sum the total amount of salary paid to staff by department */
select
  department, sum(salary)
from
   staff
group by
    department;

/* Sum the total, and average (or mean) amount of salary paid to staff by department */
select
  department, sum(salary), avg(salary)
from
   staff
group by
    department;

/* Sum the total, average (or mean) and variance of salary paid to staff by department */
select
  department, sum(salary), avg(salary), varp(salary)
from
   staff
group by
    department;

/* Sum the total, average (or mean), variance and standard deviation of salary paid to staff by department */
select
  department, sum(salary), avg(salary), varp(salary), stdevp(salary)
from
   staff
group by
    department;

/* Use round function to round to 2 decimal places */
select
  department, sum(salary) as Total, avg(salary) as Average_Salary, round(varp(salary),2) as Variance, round(stdevp(salary),2) as Std_Deviation
from
   staff
group by
    department;
