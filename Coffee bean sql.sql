USE globalsupplies;

SELECT * 
FROM `coffee bean sales analysis and optimization`;

SELECT `Country.1`, SUM(Sales) AS totalsales
FROM `coffee bean sales analysis and optimization`
GROUP BY `Country.1`;

SELECT `Country.1`, COUNT(Sales)
FROM `coffee bean sales analysis and optimization`
GROUP BY `Country.1`;

SELECT `Country.1`, 
       SUM(REPLACE(REPLACE(Sales, '$', ''), ',', '') + 0) AS totalsales
FROM `coffee bean sales analysis and optimization`
GROUP BY `Country.1`
ORDER BY totalsales DESC;

SELECT `Coffee Type.1`, 
       SUM(REPLACE(REPLACE(Sales, '$', ''), ',', '') + 0) AS totalsales
FROM `coffee bean sales analysis and optimization`
GROUP BY `Coffee Type.1`
ORDER BY totalsales DESC;

SELECT AVG(REPLACE(REPLACE(Sales, '$', ''), ',', '') + 0) AS `average revenue per customer`
FROM `coffee bean sales analysis and optimization`;