USE airbnb_db;
SHOW INDEX FROM `payment`;
-- users Table: 
-- Add index for email search and created time
CREATE INDEX idx_user_email ON user(email);
CREATE INDEX idx_user_created_at ON user(created_at);

-- Property Table
CREATE INDEX idx_property_host_id ON property(host_id);
CREATE INDEX idx_property_location ON property(location);
CREATE INDEX idx_property_price ON property(pricepernight);
CREATE INDEX idx_property_created_at ON property(created_at);

-- Booking Table
CREATE INDEX idx_booking_user_id ON booking(user_id);
CREATE INDEX idx_booking_property_id ON booking(property_id);
CREATE INDEX idx_booking_start_date ON booking(start_date);
CREATE INDEX idx_booking_end_date ON booking(end_date);
CREATE INDEX idx_booking_status ON booking(status);
CREATE INDEX idx_booking_created_at ON booking(created_at);

-- Payment Table:
CREATE INDEX idx_payment_booking_id ON payment(booking_id);
CREATE INDEX idx_payment_date ON payment(payment_date);

EXPLAIN SELECT *
FROM booking
WHERE user_id = 'abc-123'
ORDER BY created_at DESC;

EXPLAIN ANALYZE SELECT *
FROM booking
WHERE user_id = 'abc-123'
ORDER BY created_at DESC;