```sql
-- =========================================
-- Customer Shopping Behavior SQL Analysis
-- =========================================

-- 1. View First 10 Records
SELECT * 
FROM customers
LIMIT 10;


-- 2. Total Number of Customers
SELECT COUNT(*) AS total_customers
FROM customers;


-- 3. Top Product Categories
SELECT category, COUNT(*) AS total_purchases
FROM customers
GROUP BY category
ORDER BY total_purchases DESC;


-- 4. Payment Method Distribution
SELECT payment_method, COUNT(*) AS total
FROM customers
GROUP BY payment_method
ORDER BY total DESC;


-- 5. Average Review Rating
SELECT AVG(review_rating) AS avg_rating
FROM customers;


-- 6. Age Group Analysis
SELECT age_group, COUNT(*) AS total_customers
FROM customers
GROUP BY age_group
ORDER BY total_customers DESC;


-- 7. Gender-Based Purchases
SELECT gender, COUNT(*) AS total
FROM customers
GROUP BY gender;


-- 8. Highest Spending Category (if purchase amount exists)
SELECT category, SUM(purchase_amount) AS total_revenue
FROM customers
GROUP BY category
ORDER BY total_revenue DESC;


-- 9. Most Active Customers (if customer_id exists)
SELECT customer_id, COUNT(*) AS purchase_count
FROM customers
GROUP BY customer_id
ORDER BY purchase_count DESC
LIMIT 5;
