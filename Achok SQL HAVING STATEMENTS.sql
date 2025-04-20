SELECT category, SUM(revenue)
FROM sales_data
GROUP BY category;

---SELECT categories whose revenues is above or greater than 3000
SELECT category, SUM(revenue)
FROM sales_data
GROUP BY category
HAVING SUM(revenue) >3000;

---show stores with more than 2 products
SELECT store, COUNT(DISTINCT product) AS total_products
FROM sales_data
GROUP BY store
HAVING COUNT(product) > 2;

---select categories with less than 30 quantities sold
SELECT category, SUM(quantity) AS total_quantity
FROM Sales_data
GROUP BY category
HAVING total_quantity < 40;

---find categories where the average quantity sold is greater than 15
SELECT category, AVG(quantity) AS average_quantity
FROM sales_data
GROUP BY category
HAVING average_quantity > 15;