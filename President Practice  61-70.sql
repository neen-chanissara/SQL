
-- 61.	Shows the name of the President, the number of years in office and the number of Senators nominated for the President who has served more than 4 year and lost the nomination.
 
select pres_name, yrs_serv , sum(votes)
from president , election
where  pres_name = candidate
and yrs_serv > 4
group by pres_name , yrs_serv, candidate
having max(winner_loser_indic) != min(winner_loser_indic)



-- 62. Shows the average votes in the year that won the election, the number of years that each President holds positions.

select pres_name , yrs_serv , round(avg(votes),3)
from president , election
where president.pres_name = election.candidate
and winner_loser_indic = 'W'
group by pres_name , yrs_serv


-- 63.	Lists the names of presidents, years in office, and the number of times they lost in elections.
 
select pres_name , year_inaugurated , count(winner_loser_indic)
from administration , election
where administration.pres_name = election.candidate
and winner_loser_indic = 'L'
group by pres_name , year_inaugurated


-- 64.	Show the list of any president who has the most hobbies.
 
select pres_name , count(hobby)
from pres_hobby
group by pres_name
having count(hobby) = (select max(count)
   			 from (select count(*)
   			 from pres_hobby
   			 group by pres_name) as count)

-- 65.	Show the term of office of any president, which person has the longest period of service and for how long?
 
select pres_name,yrs_serv
from president
where yrs_serv = (select max(yrs_serv)
   			 from president)

-- 66.	Shows the name of the state and year of participation for being one of the states in the United States of the year for more than 2 participating states.

select state_name, year_entered
from state
where year_entered in (select year_entered
   		 from state
   		 group by year_entered
   		 having count(year_entered)>2)


-- 67.	Shows the name of the state of administration in the year of participation as one of the states in the United States for the states that entered the same period but in different years of participation.
 
select *
from state
where admin_entered in (select admin_entered
   from state
 	  group by admin_entered
 	  having count(admin_entered) >= 2
   	)


-- 68.	Shows the maximum number of presidents in political parties whose presidents are born after 1850 the most and the names of political parties.
 
select party ,count(pres_name)
from president
where birth_yr > 1850
group by party
 count(birth_yr) = (select max(count)
   			 from (select count(birth_yr)
   			 from president
   			 where birth_yr > 1850
   			 group by party ) as count)


-- 69.	Lists the names of the President, the number of years in office for the longest-serving President.
 
select pres_name , yrs_serv
from president
group by pres_name , yrs_serv
having yrs_serv = ( select max(yrs_serv)
   		 from president
   		 where yrs_serv in
   		 (
   			 select max(yrs_serv)
   			 from president
   			 group by pres_name
   			 
   		 )
   	 )

-- 70.	Shows the number of presidents of each political party whose president was born after 1850 and list of party names in order of party order.
 
select party , count(pres_name)
from president
where birth_yr > 1850
group by party
order by  party
