# Food Allergies Database

## Table of contents
- Project Summary
- Technologies
- Data Extraction, Transformation, extraction load process
- Example Queries
- Features
- Status
- Inspiration
- Contact

## Project Summary

This project is aimed at creating a database for customers with food allergies. We decided to concentrate on the list of products from Goya, to limit the scope of the project. Using this database, customers will be able to query ingredients to avoid based on their allergies.  The database compares Goya food products based on ingredients with a list of food allergens. This database also provides the food substitutes and lastly the list of symptoms one may experience with each food allergen. We focused on the 8 major food allergens. They are as follows:
 - Milk 
 - Eggs
 - Fish
 - Shellfish 
 - Tree nuts
 - Peanuts
 - Wheat 
 - Soybean
Based on the specific allergen, customers will be able to find alternative ingredients to use and the symptoms associated with each allergen.

## List of data sources:
### Goya Products:
 - https://world.openfoodfacts.org/brand/goya/ingredients

### Food Substitutes:
 - https://www.medicalnewstoday.com/articles/egg-substitutes#list-of-substitutes
 - https://www.medicalnewstoday.com/articles/fish-substitute 
 - https://www.outsideonline.com/2392887/milk-alternatives-substitutes-benefits-healthiest
 - https://thefitcookie.com/healthy-nut-alternatives
 - https://theveganatlas.com/7-plant-based-seafood-alternatives-that-you-need-to-try/ 
 - https://www.livekindly.co/9-vegan-proteins-to-eat-when-youre-allergic-to-soy/ 
 - https://www.eatingwithfoodallergies.com/wheat-substitutes/

### Symptoms:
 - https://acaai.org/allergies/types/food-allergy

## Technologies:
 - Beautiful Soup
 - PostgreSQL
 - Python
 - Pandas
 - Quick DBD

## Extraction, Transform, Load Process
![ERD](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/QuickDBD-export%20(1).png)

### Extraction
 - BeautifulSoup was used to scrape and extract the data from the Goya resourse website (Open Food Data). We extracted all 1154 ingredients and their products from the website. We then proceeded to filter all the ingredients down to the 8 aforementioned allergens. The raw data we extracted was in the form of nested lists, so a function was created to flatten the list, so that each product as well as their corresponding products were displayed in individual rows.
 - A similar process of extraction was utilized on the each URL we used for the food substitutes.
 - For the symptoms table, after the extraction, a dictionary comprehension and stack fucntion in Pandas was utilized to match each allergen to the their list of symptoms.

### Transform
 - We shared the tasks of extracting each allergen products and their substitute amongst the team. So we ended up having 8 CSVs each for products and their substitutes.
 - We concated the 8 CSVs into 1 and then proceeded to merge it with the master allergens table, joining on the allergy_id column. We did this for the products, symptoms and the substitutes tables.
 - We reformatted the and cleaned the table, dropping unnecessary columns and duplicates.

### Load Process
- The resulting, cleaned DataFrames were imported into a PostgreSQL datadase that we created using pgAdmin.

#### Allergens Table (Left) and Products Table (Right)
![Allergens Table](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/allergens_table.png) ![Products Table](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/products_table.png) 

#### Ingredients Substitutes Table (Left) and Allergen Symptoms Table (Right)
![Substitutes Table](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/substitutes_table.png) ![Symptoms Table](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/symptoms_table.png)

## Example Queries:
 - For Users that want to list all the 8 Major Food Allergens and and their allergen_id ![Allergen_ID](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/query6.png)
 - For Users who have, for example, egg allergy. The query below is to get the allergy_id of the ingredient (Food Allergen) ![Sample Query 1](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/query1.png)
 - Users who wants to use the allergen_id to see all the products with that ingredient (Food Allergen). The sample query below uses egg (a001) ![Sample Query 2](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/query2.png)
 - For Users who wants the ingredient to provide the information regarding all the substitute of ingredient(Food Allergen), here we look for egg ![Sample Query 3](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/query3.png)
 - Users will use the ingredient to provide the information regarding all the symptoms related to ingredient(Food Allergen) for ex- here we look for Egg(a001)![Sample Query 4](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/query4.png)
 - If a person is having a particular symptom for example "Confusion" this query will return all the ingredients(food allergens) which can be associated with the symptom. ![Sample Query 5](https://github.com/Andyjag91/Allergens-in-Goya-Food-Products-/blob/main/images/query5.png)

## Use of Final Database to answer Hypothetical Questions:
 - Customers will know what Goya food products to avoid relating to their specific food allergy. 
 - Customers will be able to find substitute ingredients to avoid their specific allergy
 - Customers will be able to understand the symptoms that comes along with each allergy
 
## Things to consider for project/concerns/limitations
 - Should data be visualized through one large database, or a database with multiple schemas?
 - One database with all food products with allergens
 - One database with each product by allergen (8)
 - (milk, eggs, fish, shellfish, tree nuts, peanuts, wheats, soybeans)
 - The Difference between the two options would be the syntax of the coding of query to either go through one database or multiple schemas  
 
## Contacts/Teams Members:
 - Abayomi Olujobi
 - Andy Jagdeo
 - Saumya Pandey 
