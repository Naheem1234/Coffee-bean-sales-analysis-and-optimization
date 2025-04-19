# Coffee bean sales analysis and optimization

### Project Overview

This Project presents a strategic analysis of Global Coffee Supplies Ltd’s coffee bean sales performance and data-driven insights, focusing on understanding sales trends across different coffee types and regions, evaluating the impact of pricing on sales volume and identifying opportunities for revenue and efficiency improvements. The findings highlight key growth opportunities and areas for operational optimization.

### Data Sources

Coffee Bean Sales Data: The primary dataset used for this analysis is the "Raw Data.xlsx" file, containing detailed information about the bean type, sales made by the company.

### Tools

- Excel: Data Cleaning, Data Analysis
- MySql: Data Analysis
- PowerBI: Data Visualization
- Microsoft Word: Report

### Exploratory Data Analysis
EDA involved using the coffee bean sales data to answer key questions such as;

- Sales Performance Overview
- Coffee Type performance Analysis
- Revenue By Country
- Monthly Revenue Trend Analysis
- Pricing Impact on Quantity sold Using Regression Analysis
 
### Data Analysis

Include some interesting queries worked with

```sql
SELECT `Country.1`, SUM(REPLACE(REPLACE(Sales, '$', ''), ',', '') + 0) AS totalsales
FROM `coffee bean sales analysis and optimization`
GROUP BY `Country.1`
ORDER BY totalsales DESC;
```
```sql
SELECT `Coffee Type.1`, SUM(REPLACE(REPLACE(Sales, '$', ''), ',', '') + 0) AS totalsales
FROM `coffee bean sales analysis and optimization`
GROUP BY `Coffee Type.1`
ORDER BY totalsales DESC;
```

### Results/Findings

The Analysis Results are Summarized as follows:

1. The United States dominates sales, contributing over $30,000 in revenue.
2. Robusta, despite having high sales, has the lowest revenue per kg, indicating potential pricing issues.
3. Ireland and the UK contribute smaller but steady sales.
4. The highest and lowest revenue months vary across the years.
5. There is little or no correlation between price and quantity sold, so adjusting prices alone won’t drive higher sales-marketing and demand factors play a bigger role.

### Recommendations

Based on the analysis, the following actions are recommended:

- Invest in marketing campaigns instead of price reductions.
- Expand sales efforts in high-performing regions like the U.S.
- Optimize inventory based on seasonal demand fluctuations.
- Reevaluate pricing strategy for Robusta, which has high sales but lower revenue per kg.
- Investigate why August 2020 and August 2022 had the lowest revenues and develop strategies to mitigate similar declines in the future.

### Limitations

I cleaned the data based on the EDA/the key questions sought to be addressed and I did join with power query editor in excel hence why it did not reflect in my query and also i imported the cleaned data in excel to mysql which had the currencncy formated in it hence why i used the REPLACE function in my query.

   
