-- 11.	Lists names of presidents and wifes and the number of children in every marriage program with more than 5 children.
 
select pres_name , spouse_name , nr_children
from PRES_MARRIAGE
where nr_children > 5

-- 12.	Shows the names of the president and their spouses who were married when the president was about 20 years old and the wife was not over 20 years old.
select pres_name , spouse_name , pr_age, sp_age
from PRES_MARRIAGE
where pr_age > 20
and sp_age <= 20

-- 13.Shows the names of presidents and married couples when they are of the same age, sorted by their spouse's age.
 
select pres_name , spouse_name , pr_age, sp_age
from PRES_MARRIAGE
where pr_age = sp_age



-- 14.	Shows the average age of a president while married.
 select avg(pr_age) 
from PRES_MARRIAGE

-- 15.	Shows the average number of children whose president married after 1900.
 
select avg(nr_children) 
from PRES_MARRIAGE
where mar_year > 1900


-- 16.	Shows the average VOTES number of people who won elections in the 20th century.
select avg(votes)
from election
where Election_year >= 1901 
and Winner_loser_indic = 'W' ;

-- 17.	Show how many times all the elections were held.
select count(distinct(election_year))
from election


-- 18.	Shows the number of losers in the election. (Shows the list of candidates that have never won elections.)

-- Result 1: Number of losers in the election
 
select count(DISTINCT Candidate)
from election 
where Winner_loser_indic = 'L'




-- Result 2: Shows the list of candidates that have never won elections.
 
select distinct(candidate)
from election 
where Winner_loser_indic = 'L'
and candidate NOT IN (select distinct(candidate)
	from election 
where Winner_loser_indic = 'W')


-- 19.	Shows the number of states that started the United States of America.
 
select count(year_entered) 
from state
where admin_entered is null ;


-- 20.	Shows the average life expectancy of presidents from Republicans born after 1850.
 
select avg(death_age)
from president
where party = 'Republican'
and Birth_yr > 1850

