--CREATE A NEW TABLE
--CREATE TABLE pop_vs_property_prices AS (
--SELECT population.state_usa, estimate, avg_price
--FROM population
--LEFT JOIN property_prices ON population.state_usa = property_prices.state_usa
--)

--SELECT *
--FROM state_income

--CHANGE COLUMN NAME
--ALTER TABLE pop_vs_property_prices
--RENAME COLUMN estimate TO population

--ADD NEW COLUMNS FOR PERCENTAGE
--ALTER TABLE pop_vs_property_prices
--ADD COLUMN pop_percentage NUMERIC,
--ADD COLUMN prices_percentage NUMERIC

--UPDATE pop_vs_property_prices
--SET prices_percentage = (avg_price / (SELECT SUM(avg_price) FROM pop_vs_property_prices)) * 100

--ALTER TABLE pop_vs_property_prices
--ALTER COLUMN pop_percentage TYPE NUMERIC AFTER population

--SELECT state_usa, population
--FROM pop_vs_property_prices
--ORDER BY population ASC
--LIMIT 5

--CREATE A NEW TABLE for state_income
--CREATE TABLE income_property AS (
--SELECT state_income.state_usa, average_income, avg_price
--FROM state_income
--LEFT JOIN property_prices ON state_income.state_usa = property_prices.state_usa
--)

SELECT *
FROM income_property

--SELECT state_usa
--FROM competitors
--GROUP BY 1
--HAVING COUNT(*) > 1

--Check distinct values--
--SELECT DISTINCT state_usa, profit, research_development_spent, administration, marketing_spent
--FROM competitors
--251 distinct values

--SELECT state_usa, profit, research_development_spent, administration, marketing_spent
--FROM competitors
--GROUP BY 1, 2, 3, 4, 5
--HAVING COUNT(*) > 1

--(SELECT *
--	ROW NUMBER() OVER(
--	PARTITION BY
--		state_usa,
--		research_development_spent,
--		administration,
--		profit
--	ORDER BY
--		state_USA) row_num
--FROM competitors

--SELECT *
--FROM competitors
--WHERE (state_usa, profit, research_development_spent, administration, marketing_spent) IN (
--  SELECT state_usa, profit, research_development_spent, administration, marketing_spent
--  FROM competitors
--  GROUP BY 1, 2, 3, 4, 5
--  HAVING COUNT(*) > 1
--);


