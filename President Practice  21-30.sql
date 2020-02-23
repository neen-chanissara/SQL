
-- 21.	Show the total number of times the president's marriage.
select pres_name,count(pres_name)
from pres_marriage
group by pres_name


-- 22.	Show how many presidents are still alive in the 1970s.
select count(pres_name)
from PRESIDENT
where birth_yr + death_age > 1970


-- 23.	Shows the number of modern times in the United States.
select count(pres_name)
from ADMINISTRATION


-- 24.	Shows how many presidents have been. (By using the ADMINISTRATION table To answer the question)
 
select count (distinct(pres_name))
from ADMINISTRATION

-- 25.	Shows the age of the youngest wife of the President while married, how old is that at that time?
 
select min(sp_age)
from PRES_MARRIAGE

-- 26.	Shows the number of children of a president who married a wife younger than 20 years.
 
select pres_name, spouse_name , nr_children
from PRES_MARRIAGE
where sp_age < 20

-- 27.	Shows the average amount of differences between the presidential age and the wife.
 
select avg(pr_age - sp_age)
from PRES_MARRIAGE

-- 28.	Show the number of presidents currently married as 2 years older than their wifes.
 
select count(pres_name)
from PRES_MARRIAGE
where pr_age - 2 > sp_age


-- 29.	Shows the average of the age of the president and the wife's age while married.
 
select avg(pr_age - sp_age)
from PRES_MARRIAGE



-- 30.	Show details of marriages of presidents who are less than two years younger than their wives.
 
select *
from pres_marriage
where pr_age < sp_age
and sp_age - 2 < pr_age

