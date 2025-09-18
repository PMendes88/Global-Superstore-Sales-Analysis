-- What are the average and total shipping costs by shipping mode for orders placed in 2014?
SELECT
    ship_mode,
    AVG(shipping_cost) AS average_shipping_costs,
    SUM(shipping_cost) AS total_shipping_costs
FROM 
    orders
WHERE
    order_year = 2014
GROUP BY 
    ship_mode
ORDER BY
    total_shipping_costs DESC

-- What are the average and total shipping costs by shipping mode?

SELECT
    ship_mode,
    AVG(shipping_cost) AS average_shipping_costs,
    SUM(shipping_cost) AS total_shipping_costs
FROM 
    orders
GROUP BY 
    ship_mode
ORDER BY
    total_shipping_costs DESC


-- How does shipping mode impact sales and profit in the latest year?

SELECT
    ship_mode,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(shipping_cost) AS avg_shipping_costs,
    SUM(shipping_cost) AS total_shipping_costs
FROM 
    orders
WHERE
    order_year = 2014
GROUP BY 
    ship_mode
ORDER BY
    total_sales DESC;

/*
Standard Class shipping is the most commonly chosen shipping mode, driving the highest sales and profit with the lowest average shipping cost. 
Faster modes like First Class and Same Day shipping have much higher average shipping costs but contribute relatively little to sales or profit, suggesting customers prefer affordable delivery over speed. 
Second Class falls in between, showing some demand for faster delivery at a moderate premium rate.
*/
