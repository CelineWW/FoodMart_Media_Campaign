-- Customer_data table
CREATE TABLE customer_data (
	id INT NOT NULL,
	store_sales FLOAT NOT NULL,
	promotion_name VARCHAR NOT NULL,
	marital_status VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	total_children INT NOT NULL,
	education VARCHAR NOT NULL,
	member_card VARCHAR NOT NULL,
	occupation VARCHAR NOT NULL,
	houseowner VARCHAR NOT NULL,
	avg_cars_at_home FLOAT NOT NULL,
	avg_yearly_income VARCHAR NOT NULL,
	num_children_at_home FLOAT NOT NULL,
	store_city VARCHAR NOT NULL,
	store_state VARCHAR NOT NULL,
	media_type VARCHAR NOT NULL,
	cost FLOAT NOT NULL,
	PRIMARY KEY (id)
);


select * from customer_data

-- Store Data Table

CREATE TABLE store_data (
	id INT NOT NULL,
	food_category VARCHAR NOT NULL,
	food_department VARCHAR NOT NULL,
	food_family VARCHAR NOT NULL,
	store_sales_in_millions FLOAT NOT NULL,
	store_cost_in_millions FLOAT NOT NULL,
	unit_sales_in_millions FLOAT NOT NULL,
	promotion_name VARCHAR NOT NULL,
	brand_name VARCHAR NOT NULL,
	SRP FLOAT NOT NULL,
	gross_weight FLOAT NOT NULL,
	net_weight FLOAT NOT NULL,
	recyclable_package FLOAT NOT NULL,
	low_fat FLOAT NOT NULL,
	units_per_case FLOAT NOT NULL,
	store_type VARCHAR NOT NULL,
	store_city VARCHAR NOT NULL,
	store_state VARCHAR NOT NULL,
	store_sqft FLOAT NOT NULL,
	grocery_sqft FLOAT NOT NULL,
	frozen_sqft FLOAT NOT NULL,
	meat_sqft FLOAT NOT NULL,
	coffee_bar FLOAT NOT NULL,
	video_store FLOAT NOT NULL,
	salad_bar FLOAT NOT NULL,
	prepared_food FLOAT NOT NULL,
	florist FLOAT NOT NULL,
	media_type VARCHAR NOT NULL,
	cost FLOAT NOT NULL,
	PRIMARY KEY (id)
);

Select * from store_data

SELECT
distinct customer_data.store_city,
customer_data.store_state,
store_data.store_type,
store_data.store_sales_in_millions
INTO Geo_revenue
FROM customer_data
INNER JOIN store_data
ON (customer_data.id = store_data.id)
group by customer_data.store_city, customer_data.store_state, 
store_data.store_type, store_data.store_sales_in_millions
order by store_data.store_sales_in_millions asc


-- Location 

select store_data.store_city,
store_data.store_state,
store_data.id
into Location
from store_data
inner join customer_data
on (store_data.id = customer_data.id)
group by store_data.store_city, store_data.store_state, store_data.id
order by store_data.store_state

select * from location

-- Promotion table that only includes media type, cost, sales and cost in millions, brand name and a unique identifier ID.

select customer_data.promotion_name,
store_data.media_type,
store_data.cost,
store_data.store_sales_in_millions,
store_data.store_cost_in_millions,
store_data.unit_sales_in_millions,
store_data.brand_name,
store_data.id
into Promotion
from store_data
inner join customer_data
on (store_data.id = customer_data.id)
group by customer_data.promotion_name,
store_data.media_type,
store_data.cost,
store_data.store_sales_in_millions,
store_data.store_cost_in_millions,
store_data.unit_sales_in_millions,
store_data.brand_name,
store_data.id

---- Store
select store_data.id,
store_data.store_type,
store_data.store_sqft,
store_data.grocery_sqft,
store_data.frozen_sqft,
store_data.meat_sqft,
store_data.coffee_bar,
store_data.video_store,
store_data.salad_bar,
store_data.prepared_food,
store_data.florist
into Store
from store_data

--- Product
select store_data.brand_name,
store_data.food_category,
store_data.food_department,
store_data.food_family,
store_data.srp,
store_data.gross_weight,
store_data.net_weight,
store_data.recyclable_package,
store_data.low_fat,
store_data.units_per_case
into Product
from store_data

-- Customer
select customer_data.id,
customer_data.marital_status,
customer_data.gender,
customer_data.total_children,
customer_data.education,
customer_data.member_card,
customer_data.occupation,
customer_data.houseowner,
customer_data.avg_cars_at_home,
customer_data.avg_yearly_income,
customer_data.num_children_at_home
into Customer 
from customer_data
 

