INSERT OVERWRITE TABLE sales_genre
SELECT
	Name, Platform, Year_of_Release, Genre, Publisher,
	NA_Sales, EU_Sales, JP_Sales, Other_Sales, ROUND(Global_Sales, 1),
	Critic_Score, Critic_Count, User_Score, User_Count,
	Developer, Rating
FROM sales_genre;

SELECT Genre, Global_Sales, Critic_Score
FROM sales_genre LIMIT 10;