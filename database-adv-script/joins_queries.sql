-- inner join

USE airbnb_db;

sElEct booking_id, b.user_id, first_name
from booking b
INNER JOIN user u
	on b.user_id = u.user_id


-- left join
USE airbnb_db;

sElEct name, comment
from property p
LEFT JOIN review r
	on p.property_id = r.review_id
ORDER BY p.property_id

-- full outer join
USE airbnb_db;

sElEct u.user_id, first_name, booking_id
from booking b
LEFT JOIN user u
	on b.user_id = u.user_id
UNION

SELECT u.user_id, first_name, booking_id
FROM booking b
RIGHT JOIN  user u
	ON u.user_id = b.user_id;