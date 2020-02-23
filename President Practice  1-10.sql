
-- 1.	Show names of presidents and ages when they have passed away, sorted by age.
select pres_name , death_age
from president
Order by death_age

-- 2.Shows the name of the party and the president that is affiliated with the name of the party and the president.
select party ,pres_name
from president
Order by party , pres_name

-- 3.	Shows how old the president passed away in descending order
select death_age, pres_name
from president
where death_age > 0 
order by death_age asc, pres_name desc ;

-- 4.	Show presidents and spouses ages, sorted by president and spouse ages, if duplicate entries are shown only once.
select pres_name , spouse_name , pr_age ,sp_age
from pres_marriage
order by  pr_age

-- 5.	Show details of President Reagan.
select *
from president
where pres_name like 'Reagan%'
order by pres_name

-- 6.	Show details of every president except Reagan, sorted by name.
select * 
from president
where pres_name NOT LIKE 'Reagan%'
order by pres_name

-- 7.	Show details of all the presidents who died before age 70, sorted by descending age.
 
select *
from president
where death_age < 70
order by death_age

-- 8.	Shows the names of the presidents named between 'Eisenhower' AND 'Nixon', sorted by name of the president.
select *
from president
where pres_name between 'Eisenhower' AND 'Nixon' 
order by pres_name asc

-- 9.	Show details of the President who worked in the position 2,4,6,8 years.

select * 
from president
where yrs_serv IN (2,4,6,8)


--10.	Shows details of the president of the 'Republican' party, ordered by name.
 
select * 
from president
where party = 'Republican'
order by pres_name asc