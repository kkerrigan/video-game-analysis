CREATE TABLE sales_genre
(
	Name string,
	Platform string,
	Year_of_Release int,
	Genre string,
	Publisher string,
	NA_Sales float,
	EU_Sales float,
	JP_Sales float,
	Other_Sales float,
	Global_Sales float,
	Critic_Score int,
	Critic_Count int,
	User_Score int,
	User_Count int,
	Developer string,
	Rating string
);

INSERT OVERWRITE TABLE sales_genre
SELECT
	Name, Platform, Year_of_Release, Genre, Publisher,
	NA_Sales, EU_Sales, JP_Sales, Other_Sales, Global_Sales,
	Critic_Score, Critic_Count, User_Score, User_Count,
	Developer, Rating
FROM sales;

SELECT Genre, Global_Sales, Critic_Score
FROM sales_genre LIMIT 10;