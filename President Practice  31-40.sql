
-- 31.	Find the maximum, minimum, Of the ratio between years in position and age at the expiration of a death, as a percentage of only the President who has passed away.
 

SELECT MAX(CAST(YRS_SERV AS FLOAT)/CAST(DEATH_AGE AS FLOAT))*100, 
	MIN(CAST(YRS_SERV AS FLOAT)/CAST(DEATH_AGE AS FLOAT))*100
                  FROM PRESIDENT
                  WHERE DEATH_AGE>0;


-- 32.	Shows the number of candidates after 1900, ordered from the most recent year.
 
select election_year , candidate
from election
where election_year > 1900
order by election_year desc




-- 33. Show the number of candidates after the year 1976 ordered by election year.
 
select election_year , candidate
from election
where election_year > 1976
order by election_year desc


-- 34.	Show details of any president whose last second marriage was twice as old as the first marriage.
 
select pres_name,min(pr_age),max(pr_age)
from PRES_MARRIAGE
group by pres_name
having count(pres_name)>1 
and max(pr_age)> (min(pr_age)*2)



-- 35.	After the year 1870, any election with more than 2 candidates.
 
select election_year , count(candidate) 
from election
where election_year > 1870
group by election_year
having count(candidate) > 2

-- 36.	Shows the average age of a president who is married and the average age of a wife.
 
select avg(pr_age) ,avg(sp_age)
from PRES_MARRIAGE

-- 37.	Shows the average number of children of the president.
 
select avg(nr_children)
from PRES_MARRIAGE


-- 38.	Show the list of presidents and the total number of children of at least 1 president who has been married under the age of 20.
 

select pres_name , sum(nr_children), min(pr_age)
from PRES_MARRIAGE
where pres_name in
		(select pres_name
		from PRES_MARRIAGE 
		where pr_age <= 20)
group by pres_name


-- 39.	Lists the names of the presidents and the total number of children for people who have first married after age 35.
 
select pres_name , sum(nr_children),min (pr_age)
from PRES_MARRIAGE
where pr_age > 35
and pres_name not in 
		(select pres_name
		from PRES_MARRIAGE 
		where pr_age <= 35)
group by pres_name


-- 40.	Lists the names of any presidents without children at any one time in the marriage.
 
select pres_name , pr_age , mar_year
from PRES_MARRIAGE
where nr_children = 0

