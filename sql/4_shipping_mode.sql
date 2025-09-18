SELECT
    ship_mode,
    AVG(shipping_cost) AS average_shipping_cost,
    SUM(shipping_cost) AS total_shipping_cost
FROM 
    orders
GROUP BY 
    ship_mode
ORDER BY
    average_shipping_cost DESC;

/*
Even though same day shipping is the most expensive on average, it has the lowest total shipping cost.
The average shipping costs are inversely proportional to the total shipping costs.
This is due to the fact that same day shipping is used less frequently compared to other shipping modes.
*/