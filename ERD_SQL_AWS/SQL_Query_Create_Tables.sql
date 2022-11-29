-- Location Table
CREATE TABLE location_data (
	location_id VARCHAR NOT NULL,
	store_city VARCHAR NOT NULL,
	store_state VARCHAR NOT NULL,
	PRIMARY KEY (location_id)
);

-- Product Table
CREATE TABLE product_data (
	product_id VARCHAR NOT NULL,
	brand_name VARCHAR NOT NULL,
	food_category VARCHAR NOT NULL,
	food_department VARCHAR NOT NULL,
	food_family VARCHAR NOT NULL,
	SRP FLOAT NOT NULL,
	gross_weight FLOAT NOT NULL,
	net_weight FLOAT NOT NULL,
	recyclable_package INT NOT NULL,
	low_fat INT NOT NULL,
	units_per_case INT NOT NULL,
	PRIMARY KEY (product_id)
);

-- Customer Table
CREATE TABLE customer_data (
	customer_id VARCHAR NOT NULL,
	marital_status VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	total_children INT NOT NULL,
	education VARCHAR NOT NULL,
	member_card VARCHAR NOT NULL,
	occupation VARCHAR NOT NULL,
	houseowner VARCHAR NOT NULL,
	avg_cars_at_home_approx FLOAT NOT NULL,
	avg_yearly_income VARCHAR NOT NULL,
	num_children_at_home FLOAT NOT NULL,
	location_id VARCHAR NOT NULL,
	PRIMARY KEY (customer_id),
	FOREIGN KEY (location_id) REFERENCES location_data (location_id)
);

-- Store Table
CREATE TABLE store_data (
	store_id VARCHAR NOT NULL,
	store_type VARCHAR NOT NULL,
	store_sqft INT NOT NULL,
	grocery_sqft INT NOT NULL,
	frozen_sqft INT NOT NULL,
	meat_sqft INT NOT NULL,
	coffee_bar INT NOT NULL,
	video_store INT NOT NULL,
	salad_bar INT NOT NULL,
	prepared_food INT NOT NULL,
	florist INT NOT NULL,
	location_id VARCHAR NOT NULL,
	PRIMARY KEY (store_id),
	FOREIGN KEY (location_id) REFERENCES location_data (location_id)
);

-- Promotion Table
CREATE TABLE promo_data (
	promotion_id VARCHAR NOT NULL,
	promotion_name VARCHAR NOT NULL,
	media_type VARCHAR NOT NULL,
	cost FLOAT NOT NULL,
	store_sales_in_millions FLOAT NOT NULL,
	store_cost_in_millions FLOAT NOT NULL,
	unit_sales_in_millions INT NOT NULL,
	product_id VARCHAR NOT NULL,
	store_id VARCHAR NOT NULL,
	customer_id VARCHAR NOT NULL,
	location_id VARCHAR NOT NULL,
	PRIMARY KEY (promotion_id),
	FOREIGN KEY (product_id) REFERENCES product_data(product_id),
	FOREIGN KEY (store_id) REFERENCES store_data(store_id),
	FOREIGN KEY (customer_id) REFERENCES customer_data(customer_id),
	FOREIGN KEY (location_id) REFERENCES location_data (location_id)
);