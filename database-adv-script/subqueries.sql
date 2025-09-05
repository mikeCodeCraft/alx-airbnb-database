use airbnb_db;
select *
from
	(select avg(rating) as av_rating, property_id
	from review r
	group by property_id)t
    
where av_rating > "4.0"