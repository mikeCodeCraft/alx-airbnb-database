-- Sample data for AirBnB Database

-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
	('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@gmail.com', 'hash1', '1234567890', 'host', CURRENT_TIMESTAMP),
	('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob@example.com', 'hash2', '2345678901', 'guest', CURRENT_TIMESTAMP),
	('33333333-3333-3333-3333-333333333333', 'Carol', 'Williams', 'carol@example.com', 'hash3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
	('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 'Cozy Cottage', 'A small, cozy cottage in the countryside.', 'Countryside', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', 'City Apartment', 'Modern apartment in the city center.', 'City Center', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
	('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', '2025-09-10', '2025-09-15', 600.00, 'confirmed', CURRENT_TIMESTAMP),
	('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', '2025-10-01', '2025-10-05', 800.00, 'pending', CURRENT_TIMESTAMP);

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
	('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 600.00, CURRENT_TIMESTAMP, 'credit_card'),
	('ccccccc2-cccc-cccc-cccc-ccccccccccc2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 800.00, CURRENT_TIMESTAMP, 'paypal');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
	('ddddddd1-dddd-dddd-dddd-ddddddddddd1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 5, 'Amazing stay! Highly recommended.', CURRENT_TIMESTAMP),
	('ddddddd2-dddd-dddd-dddd-ddddddddddd2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 4, 'Great location, clean apartment.', CURRENT_TIMESTAMP);

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
	('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, is the cottage available in September?', CURRENT_TIMESTAMP),
	('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes, it is available. Let me know your dates.', CURRENT_TIMESTAMP);
