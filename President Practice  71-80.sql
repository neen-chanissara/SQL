
-- 71.	Show the list of presidents who married at least 2 time and in each marriage have at least 2 children.
 
select pres_name
from PRES_MARRIAGE
where nr_children > 1
group by pres_name
having count(spouse_name) > 1


-- 72.	Show details of the President table for the president who took the first position after the year of President Reagan First marriage.
 

select     year_inaugurated ,president.pres_name, birth_yr, yrs_serv, death_age,party,state_born
from president, administration
where president.pres_name = administration.pres_name
and administration.year_inaugurated = (select min(year_inaugurated)
   				 from administration
   				 where year_inaugurated > (select  min(mar_year)
   								 from pres_marriage
   								 where pres_name like 'Reagan%'
   								 group by pres_name ) )




-- 73.	Shows the names of the youngest presidents when they take position for the first time.
 
select PS.pres_name , (AD.year_inaugurated - PS.birth_yr) 
from administration AD , president PS
where AD.pres_name = PS.pres_name
group by PS.pres_name ,(AD.year_inaugurated - PS.birth_yr) 
having AD.year_inaugurated - PS.birth_yr = (select MIN(UP.YE)
  	  from(
   		 select AD.pres_name as ADP, (AD.year_inaugurated - PS.birth_yr) 
   		 from administration AD , president PS
   		 where AD.pres_name = PS.pres_name
   		 group by AD.pres_name , (AD.year_inaugurated - PS.birth_yr)
   	 )  as UP
    )


-- 74.	Show the lists names and number of children of presidents who marry before age 40 Years with more than 1 marriage and the sum of more than 2 children
 
select pres_name , count(pres_name),sum(nr_children)
from PRES_MARRIAGE
where pr_age < 40
group by pres_name
having count(pres_name) > 1
and sum(nr_children) > 2

-- 75.	Shows the number of children of a president who married after age 50 year old and have a spouse younger than 30 year old.
 
select pres_name , sum(nr_children)
from PRES_MARRIAGE
where pr_age > 50
and sp_age < 30
group by pres_name


-- 76. Shows the total votes of the winners and losers in election of each year.


select WW.election_year , WW.Winner_votes , WL.Looser_votes
from
   	 (select election_year,sum(votes) as Winner_votes
   	 from election
   	 where winner_loser_indic = 'W'
   	 group by election_year) AS WW,

   	 (select election_year,sum(votes) as Looser_votes
   	 from election
   	 where winner_loser_indic = 'L'
   	 group by election_year) AS WL
where WW.election_year = WL.election_year
order by election_year

-- 77.	Shows the average age of first-married president.
 

select avg(MS.MM)
from     (select min(pr_age) as MM
    from PRES_MARRIAGE
 	   group by pres_name) as MS


-- 78.	Shows the average age of the president for the 2nd marriage.
 
select avg(MS.MM)
from     (select max(pr_age) as MM
    from PRES_MARRIAGE
    group by pres_name
 	   having count(pres_name) > 1) as MS


-- 79.	Shows the names of the president, year of birth, and age at the time of the 2nd marriage.
 
select PR.pres_name , max(PR.birth_yr) , max(PM.pr_age) as age2
    from president PR, PRES_MARRIAGE PM
   	 where PR.pres_name = PM.pres_name
   	 group by  PR.pres_name , PM.pres_name
   	 having count (spouse_name) > 1
   	 order by PR.pres_name

-- 80.	Shows the list of names of the president, year of birth and year of winning in the second election.
 
select PR.pres_name , PR.birth_yr , EL.election_year
from president PR , election EL , (select EL.candidate , min(EL.election_year) as year
   				 from election EL
   				 where winner_loser_indic = 'W'
   				 group by EL.candidate
   				 having COUNT(EL.election_year) > 1 ) as EMIN
where PR.pres_name = EL.candidate
and EL.candidate = EMIN.candidate
and EL.election_year > EMIN.year
and winner_loser_indic = 'W'


