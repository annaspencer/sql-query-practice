-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = 1880;
--selects app data from app id 1880 in db
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-03';
--selects app name and id for apps last updated on 8/3/2018
SELECT category, COUNT(category) FROM analytics GROUP BY category;
--reads category names and counts how many apps in each category
SELECT * FROM analytics ORDER BY reviews desc LIMIT 5;
--lists the top 5 most reviewed apps
SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;
--lists the app with a rating over 4.8 with the most reviews
SELECT AVG(rating), category FROM analytics GROUP BY category ORDER BY AVG(rating) desc;
--lists category in ascending order of average ratings
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;
--selects the highest app under a rating of 3
