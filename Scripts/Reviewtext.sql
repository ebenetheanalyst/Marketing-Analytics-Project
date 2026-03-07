
-- Query to clean whitespace issues in the review text column

SELECT
	ReviewID, -- Selects the unique identifer for each review
	CustomerID, -- Selects the unique identifer for each customer
	ProductID, -- Selects the uniqu identifer for each product
	ReviewDate, -- Selects the date when then review was written 
	Rating, -- Selects the numerical rating given by the customer (e.g 1-5 stars)
	-- Cleaning up the Review text by replacing double space with single space to ensure the text is readable and standandize
	REPLACE(ReviewText, '  ', ' ') AS ReviewText

FROM dbo.customer_reviews -- specifies the source table from which to select the data
