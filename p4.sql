select Entity, Year, date(CONCAT(Year, '-01-01')) Jan_Year, CURDATE() Cur_date,
	   year(CURDATE()) - year(date(CONCAT(Year, '-01-01'))) Delta_Year
from infectious_cases;