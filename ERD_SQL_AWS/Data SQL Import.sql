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
