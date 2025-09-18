SELECT
    segment,
    SUM(sales) AS total_revenue,
    SUM(profit) AS total_profit,
    ((SUM(profit) / SUM(sales)) * 100) AS profit_margin_percentage
FROM
    orders
GROUP BY
    segment
ORDER BY
    profit_margin_percentage DESC

/*
The customer segment with the highest profit margin is the Consumer segment, 
indicating that this segment is the most profitable relative to its sales.
This suggests that focusing marketing and sales efforts on the Consumer segment could be beneficial for maximizing profitability.
However, the Consumer segment is the growth driver with the highest revenue and profit volume.
The profit margin for all segments is close, indicating that each segment contributes similarly to overall profitability.
*/