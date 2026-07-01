-- Daily sales
SELECT sale_date, sales_count, units_sold, total_amount_eur
FROM vw_sales_daily
ORDER BY sale_date;

-- Sales by category
SELECT category, units_sold, total_amount_eur
FROM vw_sales_by_category
ORDER BY total_amount_eur DESC;

-- Top products
SELECT
    product_id,
    product_name,
    SUM(quantity) AS units_sold,
    SUM(total_amount_cents) / 100.0 AS total_amount_eur
FROM sales_clean
GROUP BY product_id, product_name
ORDER BY total_amount_eur DESC;
