-- Statement to join dim_customers with dim_geography to enrich customer data with qeographic information

SELECT 
  	c.CustomerID, -- Selects the unique identifier for each customer
  	c.CustomerName, -- Selects the name of each customer
  	c.Email, -- Select the email of each customer
  	c.Gender, -- Select the gender of each customer
  	c.Age, -- Selects the age of each customer
  	g.Country, -- Selects the country from the geograhpy table to enrich the customer data
  	g.City -- Selects the city from the geography table to enrich customer data
FROM 
	  dbo.customers AS c -- Specifics the alias 'c' for the dim_customers table 
LEFT JOIN 
	  dbo.geography AS g -- Specifics the alias 'g' for the dim_geograhpy table
ON 
	  c.GeographyID = g.GeographyID; -- Joins the two tables on the GeographyID field to match customers with their geographic information
