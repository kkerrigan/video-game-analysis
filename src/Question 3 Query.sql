CREATE TABLE sports_count
(
  global_sales float,
  count int
);

INSERT INTO sports_count(global_sales, count)
SELECT global_sales, COUNT(global_sales)
FROM sales_genre
WHERE Genre LIKE "%Sports%"
GROUP BY global_sales;


CREATE TABLE shooter_count
(
  global_sales float,
  count int
);

INSERT INTO shooter_count(global_sales, count)
SELECT global_sales, COUNT(global_sales)
FROM sales_genre
WHERE Genre LIKE "%Shooter%"
GROUP BY global_sales;