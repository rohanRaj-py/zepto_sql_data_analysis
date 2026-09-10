Create DATABASE zepto_sql_project;

USE zepto_sql_project;

DROP TABLE IF EXISTS zepto;

CREATE TABLE zepto (
sku_id INT AUTO_INCREMENT PRIMARY KEY,
Category VARCHAR(120),
name VARCHAR(150),
mrp INT,
discountPercent INT,
availableQuantity INT,
discountedSellingPrice INT,
weightInGms INT,
outOfStock INT,
quantity INT
);

SELECT * FROM zepto;
DESC zepto;

-- count no of rows
SELECT COUNT(*) FROM zepto;

-- 10 rows
SELECT * FROM zepto LIMIT 10;

-- change the paisa to rupees

UPDATE zepto
SET mrp = mrp / 100,
discountedSellingPrice = discountedSellingPrice / 100;

ALTER TABLE zepto
MODIFY mrp DECIMAL(8,2),
MODIFY discountedSellingPrice DECIMAL(8,2);

SELECT mrp, discountedSellingPrice FROM zepto;


-- Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountPercent FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;


-- Q2. What are the products with High MRP but Out of Stock?
SELECT DISTINCT name, mrp FROM zepto
WHERE outOfStock = 1 AND mrp > 300
ORDER BY mrp DESC;


-- Q3. Calculate estimated revenue for each category.
SELECT Category, SUM(availableQuantity * discountedSellingPrice) AS total_revenue FROM zepto
WHERE outOfStock = 0
GROUP BY Category
ORDER BY total_revenue;



-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;


-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT Category,  AVG(discountPercent) AS avg_discount FROM zepto
GROUP BY Category
HAVING avg_discount > (SELECT AVG(discountPercent) FROM zepto)
ORDER BY avg_discount DESC LIMIT 5;


-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/ weightInGms, 2) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram;

-- Q7. Group the products into categories like Low, Medium, and Bulk based on weight.
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
	WHEN weightInGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
    END AS weight_category
FROM zepto;


-- Q8. What is the total inventory weight per category?
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;
