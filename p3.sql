select Entity, Code, AVG(Number_rabies) avg_rabies, MIN(Number_rabies) min_rabies, 
       MAX(Number_rabies) max_rabies, SUM(Number_rabies) sum_rabies
from infectious_cases where Number_rabies IS NOT NULL
group by Entity, Code order by avg_rabies desc limit 10;