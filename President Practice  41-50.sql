    
-- 41.	Show names of more than 1 married president times and in each marriage have at least 2 children.
 
select pres_name,sum(nr_children)
from pres_marriage
where nr_children >= 2
group by pres_name
having count(nr_children) > 1
	

-- 42.	Show names of presidents and wifes for marriages who have more than 5 children.
 
select pres_name, spouse_name
from PRES_MARRIAGE
where nr_children > 5

-- 43.	Write an SQL statement, which gives the same result as this command but does not use GROUP BY CAUSE.(Shows the list of the parties without using the GROUP BY statement.)
-- SELECT PARTY FROM PRESIDENT GROUP BY PARTY

	 
select distinct party
from president

-- 44.	List of political parties with more than 7 presidents after 1850.
 
select party ,count(party)
from PRESIDENT
where birth_yr > 1850 
group by party
having count (party) > 7


-- 45.	List of states that have been the birthplace of more than one president since 1880.
 
SELECT state_born
FROM PRESIDENT
where birth_yr > 1880
group by state_born
having count (state_born) > 1

-- 46.	Show the age at which the president died of each political party.
 
SELECT party , max(death_age)
FROM PRESIDENT
where death_age is not null
group by party ,death_age 

-- 47.	Organize a group of presidents at the age of death and count the number of presidents who have died at that age.(Age range)
 
select death_age,count(pres_name)
from president
where death_age is not null
group by death_age


-- 48.	List the party names to show the age of the President and the President of the party, with the minimum age of the President passed to at least 20% of the minimum age.
 
SELECT party , max(death_age) ,min(death_age)
FROM PRESIDENT
group by party 


-- 49.	Shows the number of presidents at the age of death on average, the number of years that is the largest and least president of each state in which the president is born.
 
SELECT 
	state_born
	, count(pres_name)
	, avg(death_age)
	, max(yrs_serv)
	, min(yrs_serv)
FROM PRESIDENT
group by state_born

-- 50.	Lists the names of more than one vice president who works with the president.
 
select vice_pres_name , pres_name
from admin_pr_vp
where vice_pres_name in (
    select  vice_pres_name
  			  from admin_pr_vp
 			   group by vice_pres_name
  		 	 having count(vice_pres_name) > 1
  		 	 and max(pres_name) != min(pres_name)
   		 )	


