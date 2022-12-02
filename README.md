
 # FoodMart_Media_Campaign
 ## Overview

- This project collected a demographic information of customer data as well as store, product, and promotion data. SQL and AWS database were used to store and query the data. Raw data was divdided into multiple tables and integrated according to column properties. 
- To discover customer segment distributions, the factors of media cost and store sales, Tableau public was used to analyze and visualize the results.        - random forest classification, deep learning, random forest regressor and multiple linear regression model were applied to explore the correlation between member card, occupation, cost, store sales and other features, and make predictions. 
  - Having tested several models, RandomForest Classifier & RandomForest Regression proved  the best performers for our dataset.
  - We explored grouping & aggregating  variables in our ML models to positive effect
  - KMeans was not viable. Our dataset refused to cluster
- a flask app of webpage library was built to summarize and display the team work.

 ## Data Source

From kaggle dataset: 

https://www.kaggle.com/datasets/ramjasmaurya/medias-cost-prediction-in-foodmart?select=media+prediction+and+its+cost.csv

Why this data source was chosen and what result were expecting to get out?

Cost Prediction sounded interested since we are looking for a data source related to accounting (profit, revenue, overhead, marketing cost, how to attract new customers to increase sales).  The description of this data source “Predict cost on Media campaigns in food Mart of USA” sounded very instated and had the characteristics we were looking for.
After reviewing the contents of the data source, here are some of the questions we wanted to answer by the data source:

-	How many stores there are?
-	In which cities and states these stores are? 
-	Do costumer demographics link to membership card tiers?
-	Is the cost of sales promotions linked to customers demographics?
-	What is media cost, by state, by store type, by food department?
-	Which are top media promotions, the top unit of sales?
-	What are the sales, by department, store, food category?
 

## Tools
- SQL
- Tableau
- AWS
- Javascript
- Machine Learning through Python
- Flask App

## Results 

### ERD_SQL_AWS

![Final_ERD](https://user-images.githubusercontent.com/105877888/204651510-5aaf98c0-d717-48aa-89a7-a6a82d7b6598.png)


### Machine Learning

1. *Data Preprocessing* 
- In preprocessing we elected to Use LabelEncoder for the majority of our models to limit expansion of our dataset. Alternate encoders, such as get_dummies and OneHotEncoder, would have resulted in a combined dataset of over 300 potential features. Additionally we experimented with grouping and aggregating the data to positive effect. For example- grouping by physical store characteristic columns such as store square footage to identify distinct stores and then aggregating certain metrics of those stores to find average promotion costs and average store sales.

2. *Feature engineering & selection* 
- features were categorized by Product, Store, Promotion, Customer & Location. Several of these categories were analyzed individually as well as in combination to investigate feature importance by different categories. Questions such as:
  - Can customer demographics predict Membership Card Tier?
  - What Store features are most important for predicting store sales?
  - Do different stores prefer certain Promotions (promotion_name)?
  - Can the cost of a saLes promotion be predicted by customer demographic features?

3. *Description of how data was split into training and testing sets* 
  - using sklearn's train_test_split function, the data was split at 75% training data and 25% test data.

4. *Explanation of model choice, including limitations and benefits* 
- Final ML models were RandomForestClassifier, RandomForestRegressor, & LinearRegression. When RandomForestClassifier & LinearRegression were not viable,  RandomForestRegression was very useful for evaluation of continuous variables. 

5. *Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)* 
- Our Deep learning Nearal Network was dropped in favor of RandomForestClassifier which outperformed the Neural network in terms of accuracy and was quicker to execute.

6. *How was the model was trained or retrained*
- RandomForestClassifier models were retrained by increasing the quantity of decision trees which had a positive effect on accuracy & RMSE scores.

7. *Description and explanation of model’s confusion matrix, including final accuracy score*
- RandomForestClassifier modeling across all membership card types (Gold, Silver, Bronze, and Normal) was 94%. As displayed by the following Confusion Matrix, recall was lowest for the Silver Card category. This may be explained by the relatively small size of the Silver Card cohort, compared to the other Membership Card categories.
![Screen Shot 2022-11-02 at 10 12 33 PM](https://user-images.githubusercontent.com/105818879/199651833-e4d2e7f1-8456-4fd2-b6bc-2d6938bf3cc7.png)

![Screen Shot 2022-11-02 at 10 14 42 PM](https://user-images.githubusercontent.com/105818879/199652021-b79716a8-26b5-4aa7-96c9-db755076c8d3.png)

- Using RandomForestRegressor to analyze Agrocery store's profits based on the stores physical attributes retured a Root Means Square Error of 0.223 indicating that store features have strong predective value when analysing revenue.
![Screen Shot 2022-11-02 at 10 21 04 PM](https://user-images.githubusercontent.com/105818879/199652576-52f2a888-fd9e-4918-b703-9eca6caedfbc.png)

- It was also observed that the geographical location of these stores was an important feature for predicting the Cost of a sales promotion.
  - *With* City & State
  ![Screen Shot 2022-11-02 at 10 26 17 PM](https://user-images.githubusercontent.com/105818879/199653013-90208135-94d1-40e2-8aa7-c9979a5c329d.png)

  - *Without* City & State
  ![Screen Shot 2022-11-02 at 10 27 19 PM](https://user-images.githubusercontent.com/105818879/199653128-f351653c-9262-476c-95fb-a8afc2ee1bea.png)


### Webpage Overview
Check out our webpage here: https://foodmart-app.herokuapp.com/

![00_Homepage](https://user-images.githubusercontent.com/105877888/199294355-35d8c1d3-499b-4ea1-a316-af8a11fd2d5f.png)


### Tableau Visualization and results 

1. Customer Demographics

https://public.tableau.com/app/profile/carlos2209/viz/FoodMartDemographics/DemographicsStoryForFinal?publish=yes


How many memberships are there?


<img width="971" alt="Screen Shot 2022-10-31 at 7 39 06 PM" src="https://user-images.githubusercontent.com/102444078/199146687-900d6519-133c-4ee6-a425-7e6de97132d8.png">



Who makes up these memberships?


<img width="960" alt="Screen Shot 2022-10-31 at 7 39 40 PM" src="https://user-images.githubusercontent.com/102444078/199146753-b3b5cbc9-17a0-4a78-92ee-ee1cc892aa85.png">




Where do they shop?
<img width="953" alt="Screen Shot 2022-10-31 at 7 40 10 PM" src="https://user-images.githubusercontent.com/102444078/199146802-cdb713ab-0b7b-46dc-b3c3-d8b275eb2ac8.png">





 2. Food Mart Media Cost, Promotions and Sales

 https://public.tableau.com/app/profile/hilda.vazqez/viz/FoodMartMediaCostPromotionsandSales_16672708652530/FoodMartMediaCostPromorionsandSales?publish=yes

 -	Media cost by Store Type:

 Supermarkets are the costliest but also where more customers shop and in consequence the highest on sales.

 ![image](https://user-images.githubusercontent.com/105381777/198899776-652e54a3-f0f6-47f1-be35-2f667e9adfe1.png)


 -	Promotions Cost and Sales Results by Store 

 There are 49 different types of promotions but in general the costliest in total for all Store Types is the Weekend Markdown.  However, this varies by store type:

     . Supermarket – Weekend Markdown with a total cost of $160,008    
     . Deluxe Supermarket - Price Savers with a total cost of $101,706    
     . Gourmet Supermarket – Tow Day Sale with a total cost of $62,223    
     . Small Grocery – Sales Galore with a total cost of $7,774

    
  The cost or promotion will not determine the sales results; however Weekend Markdown has the highest sales in total for all Stores Types 
  
    . Supermarket – Weekend Markdown with a store total sale of $11,000,000
    . Deluxe Supermarket – Cash Register Lottery with a store total sale of $10,000,000
    . Gourmet Supermarket – Two Day Sale with a store total sale of $3,000,000
    . Small Grocery – Two Day Sale with a store total sale of $510,000

![image](https://user-images.githubusercontent.com/105381777/199386747-a720009d-8401-4104-b29c-fd1ce47c48b2.png)

-	Media Cost and Total Sales by Food Department

  Produce is the one with the highest cost of media but also Produce is the one with the highest sales 
  
    . Produce cost of media $535, 956
     . Produce total sale $36, 516,000

 ![image](https://user-images.githubusercontent.com/105381777/198901382-266a97a2-edf5-4bcf-adbc-90fbcc936e38.png)

 -	Sales by Media Type

 “Daily paper, radio” has the highest sales, followed by “Daily Paper". Media type could be more cost efficient combined then buying it individually with still good sales results.

     . "Daily paper,radio" total sales $32,669,000

 ![image](https://user-images.githubusercontent.com/105381777/198901686-afa97a1e-e265-4f02-ac8a-a09715a1de44.png)

 - Sales by City and State

 This data set is presenting Food Mart metrics in the states of Washington, Oregon, and California.  Here are the total sales for each city and state:

 ![image](https://user-images.githubusercontent.com/105381777/198931492-cffae9fb-0bb8-4f4b-9cb4-ab5c3f79fbea.png)

 ![image](https://user-images.githubusercontent.com/105381777/198932578-4bdcdd8d-e110-4426-8dda-1830f5a3689d.png)


 ## Summary
    - Membership Card tiers are strongly linked with customer demographics. 
         With deep learning model, we can predict Membership Card with accuracy of 0.970. 
         With random forest model, prediction accuracy can be up to 0.982. 
         Advertising of Membership Card tiers should be targeted via segmentation.

    - Media Cost can also be predicted by customer demographics with random forest regressor (RMSE: 0.637).  
         Owners & Investors should pay close attention the makeup of their customers when projecting Sales Promotion budgets.
    - For media type, Daily Paper advertisements are strongly correlated to store sales, 
         thus newspaper promotions are highly recommended.
    - Supermarkets have the most of customers & spend more money on advertisements (highest Media Cost by store type).
         Weekend Markdown is the most effective way to stimulate customers to shop in Supermarkets & 
         Supermarket also invests the most money in their Weekend Markdown promotions.
    - Store characteristics (Square Feet, Store Cost, Coffee Bar, Video Store, etc.) are strong predictors of Store Sales. 
         Investor should expect to invest in a grocery store’s physical features, amenities if they want to maximize store sales.
