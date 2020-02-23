
-- 81.	Shows the name and year of birth of the President who has the same number of times lost and won.
 
select Win.elect1 ,birth_yr
from (    select el1.candidate as elect1, count(candidate) as c1
  	  from election el1
   	 where winner_loser_indic = 'W'
   	 group by el1.candidate
    ) as Win ,
   	 (select el2.candidate as elect2 , count(candidate) as c2
    from election el2
  	  where winner_loser_indic = 'L'
   	 group by el2.candidate
  	  ) as Loser ,

    president PR
    
where Win.elect1 = Loser.elect2
and Win.elect1 = PR.pres_name
and Win.c1 = Loser.c2

 

-- 82.	Show list of presidents who hold the position more than the number of times the marriage.
 
select PS.pres_name , PS.c1
from
    (select am.pres_name  , count(am.pres_name) as c1
 	   from administration am
 	   group by am.pres_name) as PS
    	, 
    	(select pm.pres_name , count(PJ.spouse_name)as c2
    	from president pm left outer join pres_marriage PJ
    	on pm.pres_name = PJ.pres_name
    
 	   group by pm.pres_name ) as SP
where PS.pres_name = SP.pres_name
and PS.c1 > SP.c2


-- 83.	Showns the lists names of presidents whose term of positions is equal to the total number of children.

select AM.NAM1 , PMR.nr_cnt
from     (select ADM.pres_name as NAM1 , count(ADM.admin_nr) as an
    from administration ADM
	 group by ADM.pres_name ) as AM
,
    (select PM.pres_name as NAM2, sum(PM.nr_children) as nr_cnt
    from pres_marriage PM
    group by PM.pres_name ) as PMR
where AM.NAM1 = PMR.NAM2
and AM.an = PMR.nr_cnt

-- 84.	Showns the lists names and percentage of votes, Of the people who win the election from all the votes that have the most votes from the election in the table.

select candidate , votes , cast(votes as float) / cast (s1 as float)* 100 as VOT
from election ,(
    select sum(votes) as s1
    from election
    where election_year = (
   		 select election_year
   		 from election
   		 where votes = (
   			 select max(votes) as m2
   			 from election
   			 where winner_loser_indic = 'W') )
   	 )as SUM
    ,
    (select max(votes) as m1
   	 from election
   	 where winner_loser_indic = 'W') as max
where votes = max.m1


-- 85.	Showns the list of names of presidents that have previously been Vice President.
 

select pr.pres_name
from president pr
where pr.pres_name in (select APP.vice_pres_name
   		 from admin_pr_vp APP
   		 group by APP.vice_pres_name)

-- 86.	Showns the list of names who have never been Vice President

select pr.pres_name
from president pr
where pr.pres_name not in (select APP.vice_pres_name
   		 from admin_pr_vp APP
   		 group by APP.vice_pres_name)


-- 87.	Shows the lists the names of presidents who have never won and never lost an election.
 

select pr.pres_name
from  president pr
where pr.pres_name not in (select EL.candidate
   		 from election EL)


-- 88.	Shows the names of the presidents whose first marriage is less than the average age of all the first marriages of the president.

select PRM.pres_name , PRM.pr_age
from pres_marriage PRM
where PRM.pr_age <
 	   (select avg(PRE.m1) as av1
 		from
   			(select PM.pres_name,min(PM.pr_age) as m1
   			 from pres_marriage PM
   			 group by PM.pres_name
			) as PRE

		)


-- 89.	Shows the list of presidents with children from the first marriages that less than the number of hobbies.
 

select PRM.pres_name , PRM.age

from     (
			select PM.pres_name , nr_children , min(PM.pr_age) as age
			from pres_marriage PM
			group by PM.pres_name,nr_children 
		) as PRM,

		(
			select HB.pres_name,count(HB.hobby) as c1
			from pres_hobby HB
			group by HB.pres_name
		) as HOB
    
where PRM.pres_name = HOB.pres_name
and PRM.nr_children < HOB.c1



-- 90.	Shown the list of names of any President who has never been married.
 

select pr.pres_name
from  president pr
where pr.pres_name not in (select pr.pres_name
   		 from pres_marriage pr)
