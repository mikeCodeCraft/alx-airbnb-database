USE airbnb_db;
SELECT COUNT(booking_id) total, user_id
FROM booking 
GROUP BY user_id

WITH booking_counts AS (
    SELECT 
        property_id, 
        COUNT(*) AS total_bookings
    FROM booking
    GROUP BY property_id
)
SELECT 
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank1,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_num
FROM booking_counts;