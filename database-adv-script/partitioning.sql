USE airbnb_db;
SELECT COUNT(booking_id) OVER(PARTITION BY start_date) bksum, booking_id, start_date
FROM booking 