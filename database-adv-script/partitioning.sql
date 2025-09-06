
DROP TABLE IF EXISTS booking CASCADE;
-- Create partition for bookings in 2022
CREATE TABLE booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status ENUM('pending', 'confirmed', 'cancelled') DEFAULT 'pending',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION pmax  VALUES LESS THAN MAXVALUE
);





EXPLAIN ANALYZE
SELECT
 * 
FROM 
    booking_2024
WHERE 
    start_date 
BETWEEN '2024-01-01' AND '2024-10-1'
ORDER BY
     start_date;



