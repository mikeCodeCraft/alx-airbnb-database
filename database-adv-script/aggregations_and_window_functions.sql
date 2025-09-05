USE airbnb_db;
SELECT COUNT(booking_id) total, user_id
FROM booking 
GROUP BY user_id