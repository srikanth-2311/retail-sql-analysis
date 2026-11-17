SELECT * FROM retail_business_analysis.`sample - superstore`;

SELECT COUNT(*)
FROM `sample - superstore`;

SELECT
    SUM(Sales) AS Total_Sales
FROM `sample - superstore`;

SELECT
    SUM(Profit) AS Total_Profit
FROM `sample - superstore`;

SELECT
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM `sample - superstore`;

SELECT
    AVG(Sales) AS Average_Sales
FROM `sample - superstore`;

SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    `Customer Name`,
    SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY Category
ORDER BY Total_Sales DESC;


SELECT
    `Sub-Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;


SELECT
    DATE_FORMAT(
        STR_TO_DATE(`Order Date`, '%m/%d/%Y'),
        '%Y-%m'
    ) AS Sales_Month,
    SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Sales_Month
ORDER BY Sales_Month;


SELECT
    DATE_FORMAT(
        STR_TO_DATE(`Order Date`, '%m/%d/%Y'),
        '%Y-%m'
    ) AS Sales_Month,
    SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Sales_Month
ORDER BY Total_Sales DESC
LIMIT 1;



SELECT
    `Ship Mode`,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;
