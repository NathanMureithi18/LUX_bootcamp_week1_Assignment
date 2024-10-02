-- Week 1 Projects:
-- You are provided with a table called Sales, which contains the following columns:
-- 1). SaleID: A unique ID for each sale.
-- 2). ProductID: The ID of the product sold.
-- 3). CustomerID: The ID of the customer who made the purchase.
-- 4). SaleDate: The date the sale occurred.
-- 5). Amount: The amount of the sale.



-- Questions- Write SQL scripts that:
-- 1). Finds the total sales for each product.
SELECT 
    ProductID,
    SUM(Amount) AS Total_Sales
FROM
    Sales
GROUP BY
    Product_ID;

-- 2). Calculates the total sales for each month.
SELECT
    EXTRACT(month FROM SaleDate) AS Month
    SUM(Amount) AS Total_Sales
FROM
    Sales
GROUP BY
    Month;

-- 3). Identify customers who made more than 5 purchases.
SELECT
    CustomerID,
    COUNT(CustomerID) AS Number_of_Purchases
FROM
    Sales
WHERE
    Number_of_Purchases > 5
GROUP BY
    CustomerID
ORDER BY
    Number_of_Purchases DESC;