select * from infectious_cases_norm;
select * from entities;

insert into entities (Entity, Code) select distinct Entity, Code from infectious_cases;

insert into infectious_cases_norm (Entity_id, Year, Number_yaws, polio_cases, cases_guinea_worm, Number_rabies, 
				   Number_malaria, Number_hiv, Number_tuberculosis, Number_smallpox, Number_cholera_cases)
select e.Entity_id, ic.Year, ic.Number_yaws, ic.polio_cases, ic.cases_guinea_worm, ic.Number_rabies, 
	   ic.Number_malaria, ic.Number_hiv, ic.Number_tuberculosis, ic.Number_smallpox, ic.Number_cholera_cases
from infectious_cases ic left join entities e ON ic.Entity = e.Entity;