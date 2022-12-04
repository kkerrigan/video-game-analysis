CREATE TABLE all_stats
(
  average_global_sales float,
  min_global_sales float,
  max_global_sales float
);

INSERT INTO all_stats(average_global_sales, min_global_sales, max_global_sales)
SELECT AVG(global_sales), MIN(global_sales), MAX(global_sales)
FROM sales_genre;


CREATE TABLE sports_stats
(
  average_global_sales float,
  min_global_sales float,
  max_global_sales float
);

INSERT INTO sports_stats(average_global_sales, min_global_sales, max_global_sales)
SELECT AVG(global_sales), MIN(global_sales), MAX(global_sales)
FROM sales_genre
WHERE Genre LIKE "%Sports%";


CREATE TABLE shooter_stats
(
  average_global_sales float,
  min_global_sales float,
  max_global_sales float
);

INSERT INTO shooter_stats(average_global_sales, min_global_sales, max_global_sales)
SELECT AVG(global_sales), MIN(global_sales), MAX(global_sales)
FROM sales_genre
WHERE Genre LIKE "%Shooter%";