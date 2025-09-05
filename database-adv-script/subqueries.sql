USE airbnb_db;
SELECT *
FROM
	(SELECT AVG(rating) as av_rating, property_id
	FROM review r
	GROUP BY property_id)t
    
WHERE av_rating > "4.0"

USE airbnb_db;
SELECT *
FROM 
	(SELECT sum(booking_id) total, user_id
	FROM booking 
	GROUP BY user_id)t
    
WHERE total > 3