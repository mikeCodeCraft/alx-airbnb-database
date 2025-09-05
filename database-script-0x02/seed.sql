-- Sample data for AirBnB Database

-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
	( 'Alice', 'Smith', 'alice@gmail.com', 'hash1', '1234567890', 'host', CURRENT_TIMESTAMP),
	( 'Bob', 'Johnson', 'bob@example.com', 'hash2', '2345678901', 'guest', CURRENT_TIMESTAMP),
	( 'Carol', 'Williams', 'carol@example.com', 'hash3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Properties
INSERT INTO Property ( host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
	( '1', 'Cozy Cottage', 'A small, cozy cottage in the countryside.', 'Countryside', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	( '1', 'City Apartment', 'Modern apartment in the city center.', 'City Center', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Bookings
INSERT INTO Booking ( property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
	( '1', '2', '2025-09-10', '2025-09-15', 600.00, 'confirmed', CURRENT_TIMESTAMP),
	( '2', '2', '2025-10-01', '2025-10-05', 800.00, 'pending', CURRENT_TIMESTAMP);

-- Payments
INSERT INTO Payment ( booking_id, amount, payment_date, payment_method) VALUES
	( '1', 600.00, CURRENT_TIMESTAMP, 'credit_card'),
	( '2', 800.00, CURRENT_TIMESTAMP, 'paypal');

-- Reviews
INSERT INTO Review ( property_id, user_id, rating, comment, created_at) VALUES
	( '1', '2', 5, 'Amazing stay! Highly recommended.', CURRENT_TIMESTAMP),
	( '2', '2', 4, 'Great location, clean apartment.', CURRENT_TIMESTAMP);

-- Messages
INSERT INTO Message ( sender_id, recipient_id, message_body, sent_at) VALUES
	( '2', '1', 'Hi Alice, is the cottage available in September?', CURRENT_TIMESTAMP),
	( '1', '2', 'Yes, it is available. Let me know your dates.', CURRENT_TIMESTAMP);
