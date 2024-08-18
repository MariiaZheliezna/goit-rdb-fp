DROP FUNCTION IF EXISTS CalculateDeltaYear;
DELIMITER //
CREATE FUNCTION CalculateDeltaYear(input_year INT)
RETURNS INT
READS SQL DATA
BEGIN
    RETURN YEAR(CURDATE()) - YEAR(DATE(CONCAT(input_year, '-01-01')));
END //
DELIMITER ;

select Entity, Year, CalculateDeltaYear(Year) Delta_Year from infectious_cases;