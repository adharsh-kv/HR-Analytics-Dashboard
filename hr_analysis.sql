CREATE DATABASE hr_analytics;
USE hr_analytics;
SELECT * FROM hr_analytics;
DESC hr_analytics;

#Total employees
SELECT count(*) AS TOTAL_EMPLOYEES 
FROM hr_analytics;

#department wise employee count
SELECT department,count(*) AS count FROM hr_analytics
GROUP BY department;

#heighest  salary
SELECT max(monthlyrate) AS heighest_salary FROM hr_analytics;

#minimum salary
SELECT min(monthlyrate) AS minimum_salary FROM hr_analytics;


#job role wise employe count
SELECT jobrole,count(*) AS count FROM hr_analytics
GROUP BY jobrole;

#avg age
SELECT avg(age) AS AVERAGE_AGE FROM hr_analytics;

SELECT salaryslab,COUNT(*) AS count FROM hr_analytics
GROUP BY salaryslab;

#Monthly rate
SELECT avg(monthlyrate) FROM hr_analytics;

DESC hr_analytics;

#genderwise count
SELECT gender,count(*) FROM hr_analytics
GROUP BY gender;

#age between 20-30
SELECT count(*) AS count FROM hr_analytics
WHERE age BETWEEN 20 AND 30;

#avg distance from home by employees
SELECT avg(distancefromhome) FROM hr_analytics;

SELECT count(*) AS count_of_marketing FROM hr_analytics
WHERE educationfield="marketing";

#age wise heighest to lowest 
SELECT age,count(*) AS COUNT FROM hr_analytics
GROUP BY age
ORDER BY age desc;

#highest hourly rate persons
SELECT department, max(hourlyrate) FROM hr_analytics
GROUP BY department;

#lovest hourly rate by department
SELECT department,min(hourlyrate) AS minimum_hourly_salary FROM hr_analytics
GROUP BY department;

#avg hourlyrate
SELECT avg(hourlyrate) FROM hr_analytics;

#sum hourlyrate per day
SELECT sum(hourlyrate) FROM hr_analytics;

#count of overtime employees
SELECT overtime,count(*) AS count FROM hr_analytics
GROUP BY overtime;

#count of employees by jobrol greater than 100
SELECT jobrole,count(*) AS count FROM hr_analytics
GROUP BY jobrole
HAVING count>100
ORDER BY count desc;

#count of job role
SELECT jobrole,count(*) FROM hr_analytics
GROUP BY jobrole;

#job role wise heighest employees
SELECT jobrole,count(*) AS count FROM hr_analytics
GROUP BY jobrole
ORDER BY count desc;

#freshers IN A COMPANY
SELECT numcompaniesworked,count(*) AS count FROM hr_analytics
GROUP BY numcompaniesworked
HAVING numcompaniesworked=0;

#experions employees
SELECT numcompaniesworked,count(*) AS count FROM hr_analytics
GROUP BY numcompaniesworked
ORDER BY NUMCOMPANIESWORKED desc;

SELECT max(numcompaniesworked),count(*) AS count FROM hr_analytics;






SELECT attrition, COUNT(*) AS count
FROM hr_analytics
GROUP BY attrition;

#deepartment wise attrition
SELECT department,
       COUNT(*) AS employees
FROM hr_analytics
WHERE attrition = 'Yes'
GROUP BY department;

#matioal status distribution
SELECT maritalstatus ,count(*) as employees FROM hr_analytics
GROUP BY maritalstatus;

#education feild status
SELECT educationfield, COUNT(*) as count
FROM hr_analytics
GROUP BY educationfield;

#average monthly rate by department
SELECT department,
       AVG(monthlyrate) AS avg_salary
FROM hr_analytics
GROUP BY department;

#top pain departments
SELECT department,
       AVG(monthlyrate) AS avg_salary
FROM hr_analytics
GROUP BY department
ORDER BY avg_salary DESC;

SELECT *
FROM hr_analytics
WHERE numcompaniesworked =
(
    SELECT MAX(numcompaniesworked)
    FROM hr_analytics
);
 
 ALTER TABLE hr_analytics RENAME TO project;
select* from project;

desc hr_analytics;

