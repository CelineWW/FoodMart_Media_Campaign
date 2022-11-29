-- Joining all of the tables to full_data (left join)
SELECT promo_data.promotion_id,
	promo_data.promotion_name,
	promo_data.media_type,
	promo_data.cost,
	promo_data.store_sales_in_millions,
	promo_data.store_cost_in_millions,
	promo_data.unit_sales_in_millions,
	promo_data.product_id,
	promo_data.store_id,
	promo_data.customer_id,
	promo_data.location_id,
	location_data.store_city, 
	location_data.store_state,
	customer_data.marital_status,
	customer_data.gender,
	customer_data.total_children,
	customer_data.education,
	customer_data.member_card,
	customer_data.occupation,
	customer_data.houseowner,
	customer_data.avg_cars_at_home_approx,
	customer_data.avg_yearly_income,
	customer_data.num_children_at_home,
	store_data.store_type,
	store_data.store_sqft,
	store_data.grocery_sqft,
	store_data.frozen_sqft,
	store_data.meat_sqft,
	store_data.coffee_bar,
	store_data.video_store,
	store_data.salad_bar,
	store_data.prepared_food,
	store_data.florist,
	product_data.brand_name,
	product_data.food_category,
	product_data.food_department,
	product_data.food_family,
	product_data.SRP,
	product_data.gross_weight,
	product_data.net_weight,
	product_data.recyclable_package,
	product_data.low_fat,
	product_data.units_per_case
INTO full_dataset
FROM promo_data
LEFT JOIN location_data ON promo_data.location_id = location_data.location_id
LEFT JOIN customer_data ON promo_data.customer_id = customer_data.customer_id 
LEFT JOIN store_data ON promo_data.store_id = store_data.store_id
LEFT JOIN product_data ON promo_data.product_id = product_data.product_id;

SELECT * FROM full_dataset;
