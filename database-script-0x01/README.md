## AirBnB Database Schema

This schema defines the core tables and relationships for an AirBnB-like platform.

### Entities
- **User**: Stores user details (guests, hosts, admins).
- **Property**: Details of properties listed by hosts.
- **Booking**: Records bookings made by users for properties.
- **Payment**: Tracks payments for bookings.
- **Review**: User reviews for properties.
- **Message**: Direct messages between users.

### Key Constraints
- Primary keys: UUID for all tables.
- Foreign keys: Relationships between users, properties, bookings, etc.
- Unique constraint on user email.
- Non-null constraints on required fields.
- Enum constraints for roles, booking status, and payment methods.
- Rating in reviews must be between 1 and 5.

### Indexes
- Index on user email for fast lookup.
- Indexes on property_id and booking_id for performance.

### Usage
Run the SQL in `schema.sql` to create all tables and constraints in your database.
