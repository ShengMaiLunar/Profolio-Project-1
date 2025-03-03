SELECT * FROM kc_house_data
ORDER BY date

--maximum sales price 
SELECT TOP 1 * FROM kc_house_data
ORDER BY price DESC

--minimum sales price
SElECT TOP 1 * FROM kc_house_data
ORDER BY price ASC

--Average sales price 
SELECT AVG(price) AS Average_Price FROM kc_house_data

--Total sales/number of transactions
SELECT COUNT(id) AS Total_sales FROM kc_house_data

-- number of houses 
SELECT COUNT(DISTINCT id) AS unique_sales FROM kc_house_data

--Number of flipped houses
SELECT COUNT(id) - COUNT(DISTINCT id) AS Num_of_Flipped_Houses FROM kc_house_data

--informations on the flipped houses
WITH duplicate_id AS (
	SELECT id FROM kc_house_data
	GROUP BY id
	HAVING COUNT(id) > 1
)

SELECT * FROM kc_house_data
WHERE id IN (SELECT id FROM duplicate_id)

--Average conditions 
SELECT AVG(condition) AS average_condition FROM kc_house_data
SELECT Max(condition) FROM kc_house_data

--round to neareat 10,000
SELECT * FROM (
	SELECT price, ROUND(price/1000, -1) * 1000 AS rounded_prices FROM kc_house_data
) AS round_prices

--round to nearests 100,000
SELECT * FROM (
	SELECT price, ROUND(price/10000, -1) * 10000 AS rounded_prices FROM kc_house_data
) AS round_prices

--price distribution (rounded and unrounded)
SELECT *, COUNT(*) AS num_houses FROM (
	SELECT ROUND(price/10000, -1) * 10000 AS rounded_prices FROM kc_house_data
) AS round_prices
GROUP BY rounded_prices
ORDER BY rounded_prices

SELECT *, COUNT(*) FROM (
	SELECT price AS rounded_prices FROM kc_house_data
) AS round_prices
GROUP BY rounded_prices
ORDER BY rounded_prices

--average by months
SELECT SUBSTRING(date, 1, 6) AS year_month, AVG(price) AS Average_price FROM kc_house_data
GROUP BY SUBSTRING(date, 1, 6)
ORDER BY year_month

--prices based sqft_living
SELECT ROUND(sqft_living/10, -1) * 10 AS sqft_rounded, AVG(price) AS Average_price, COUNT(*) AS num_houses FROM kc_house_data
GROUP BY ROUND(sqft_living / 10, -1) * 10
ORDER BY ROUND(sqft_living / 10, -1) * 10

-- top 5 most expensive zip codes 
SELECT TOP 5 
	zipcode, 
	AVG(price) AS Average_price, 
	ROUND(SUM(CASE WHEN waterfront = 1 THEN 1 ELSE 0 END) * 1.0 /COUNT(waterfront) * 100, 2) AS percent_with_waterfront, 
    AVG(condition) AS Avg_condition, 
    AVG(grade) AS Avg_grade, 
    AVG(sqft_living) AS Avg_sqft_living,  
	ROUND(SUM(CASE WHEN yr_renovated > 0 THEN 1 ELSE 0 END) * 1.0 /COUNT(yr_renovated)* 100, 2) AS percent_with_yr_renovated
FROM kc_house_data
GROUP BY zipcode
ORDER BY AVG(price) DESC


--condition and grade vs sale prices 
SELECT AVG(price) AS Avg_price, grade, condition FROM kc_house_data
GROUP BY condition, grade
ORDER BY condition, grade
