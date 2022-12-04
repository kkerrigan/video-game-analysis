CREATE TABLE sports_critic_score
(
  sports_critic_score int
);

INSERT INTO sports_critic_score(sports_critic_score)
SELECT AVG(Critic_Score) as sports_critic_score
FROM sales_genre
WHERE Genre LIKE "%Sports%";



CREATE TABLE shooter_critic
(
  shooter_critic_score int
);

INSERT INTO shooter_critic(shooter_critic_score)
SELECT AVG(Critic_Score) as shooter_critic_score
FROM sales_genre
WHERE Genre LIKE "%Shooter%";