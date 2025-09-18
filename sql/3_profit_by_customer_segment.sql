SELECT
    segment,
    SUM(sales) AS total_sales_pounds,
    SUM(profit) AS total_profit_pounds,
    ((SUM(profit) / SUM(sales)) * 100) AS profit_margin_percentage
FROM
    orders
GROUP BY
    segment
ORDER BY
    profit_margin_percentage DESC

/*
The customer segment with the highest profit margin is the Home Office segment, 
indicating that this segment is the most profitable relative to its sales.
This suggests that focusing marketing and sales efforts on the Home Office segment could be beneficial for maximizing profitability.
However, the profit margin for all segments is close, indicating that each segment contributes similarly to overall profitability.
*/