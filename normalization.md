# Database Normalization: AirBnB Schema

## Objective

Apply normalization principles to ensure the database is in Third Normal Form (3NF).

---

## Normalization Steps

### 1. First Normal Form (1NF)

- All tables have atomic (indivisible) values.
- Each field contains only one value per row (e.g., no lists or sets).
- Each table has a primary key.

### 2. Second Normal Form (2NF)

- All tables are in 1NF.
- All non-key attributes are fully functionally dependent on the whole primary key (no partial dependencies).
- Composite keys are not present in this schema, so 2NF is satisfied.

### 3. Third Normal Form (3NF)

- All tables are in 2NF.
- No transitive dependencies (non-key attributes do not depend on other non-key attributes).
- All attributes depend only on the primary key.

---

## Review of Schema

### User

- No redundant data. All attributes depend on user_id.

### Property

- All attributes depend on property_id. host_id is a foreign key, not a transitive dependency.

### Booking

- All attributes depend on booking_id. property_id and user_id are foreign keys.

### Payment

- All attributes depend on payment_id. booking_id is a foreign key.

### Review

- All attributes depend on review_id. property_id and user_id are foreign keys.

### Message

- All attributes depend on message_id. sender_id and recipient_id are foreign keys.

---

## Conclusion

The schema is in 3NF:

- No repeating groups or arrays (1NF).
- No partial dependencies (2NF).
- No transitive dependencies (3NF).
- All relationships are handled via foreign keys.
