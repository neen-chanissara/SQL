
-- 51.	Shows the number of administrative periods and the number of vice-presidents of the period in which there are more than 1 vice president.
 
select admin_nr,count(pres_name)
from admin_pr_vp
group by admin_nr
having count(vice_pres_name) > 1

-- 52. Show the governing era with more than 1 president.
 
select admin_nr ,count(pres_name)
from administration
group by admin_nr
having count(pres_name) > 1


-- 53.	Lists the names of the presidents and the year they were presidents for the first time.
 
select pres_name,min(year_inaugurated)
from administration
group by pres_name


-- 54.	Shows the number of hobbies of each type, and shows the number of presidents how are interested in.
 
select hobby , count(hobby)
from pres_hobby
group by hobby
 
-- 55.	Show details of which president has worked in the White House for more than 6 years.
 
select *
from president
where yrs_serv > 6
 

-- 56.	Shows the number of participating states as a member of the United States each year.
 
select year_entered , count(year_entered)
from state
group by year_entered

-- 57.	How many new states joined the United States in 1776?
 
select count(year_entered)
from state
where year_entered = 1776

-- 58.	Shows the average number of hobbies of the president.
 
SELECT AVG(COUNT)
FROM ( SELECT COUNT(HOBBY)
 FROM PRES_HOBBY
 GROUP BY HOBBY) AS COUNT


-- 59.	Show names of any president who has more than 2 children.

select pres_name,sum(nr_children)
from pres_marriage 
where nr_children > 2
group by pres_name


-- 60.	Show details of the marriage of any president who have more than 2 children
 
select *
from pres_marriage
where nr_children > 2


