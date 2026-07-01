DROP VIEW IF EXISTS vw_sales_daily;
DROP VIEW IF EXISTS vw_sales_by_category;
DROP TABLE IF EXISTS sales_clean;

CREATE TABLE sales_clean (
    sale_date TEXT NOT NULL,
    customer_id TEXT NOT NULL,
    product_id TEXT NOT NULL,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price_cents INTEGER NOT NULL,
    total_amount_cents INTEGER NOT NULL,
    channel TEXT NOT NULL
);

CREATE VIEW vw_sales_daily AS
SELECT
    sale_date,
    COUNT(*) AS sales_count,
    SUM(quantity) AS units_sold,
    SUM(total_amount_cents) / 100.0 AS total_amount_eur
FROM sales_clean
GROUP BY sale_date;

CREATE VIEW vw_sales_by_category AS
SELECT
    category,
    SUM(quantity) AS units_sold,
    SUM(total_amount_cents) / 100.0 AS total_amount_eur
FROM sales_clean
GROUP BY category;
