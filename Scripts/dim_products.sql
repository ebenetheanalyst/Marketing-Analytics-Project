
 -- Sql to categorise product based on their price

SELECT 
  	ProductID, -- Selects the unique identifer for each product
  	ProductName, -- Selects the name of each product
  	-- Category, -- Selects the category of each product
  	Price, -- Selects the price of each product

	CASE -- Categories the products into price category: High, Medium and Low
  	WHEN Price < 50 THEN 'Low'  -- If price is less than 50, categorise as 'Low'
  	WHEN Price BETWEEN 50 AND 200 THEN 'Medium' -- If price is between 50 and 200(incluive), categorise as 'Medium'
  	ELSE 'High' -- If price is greater than 200, Categorise as 'High'
  	END AS PriceCategory

FROM products -- Specifies the source table from which to select the data
