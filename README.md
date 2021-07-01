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

Symptoms:
https://acaai.org/allergies/types/food-allergy


#H3 Technologies:
Beautiful Soup
PostgreSQL
Python
Pandas
Quick DBD

#H3 Extraction, Transform, Load Process
[ERD image]


BeautifulSoup was used to scrape and extract the data from the Goya website. We extracted all 1154 ingredients and their products from the Goya website. We then proceeded to filter all the ingredients down to the 8 aforementioned allergens.

We repeated the same process for the substitutes and the symptoms.

Transforming by cleaning or reformatting it. Joining Dataframes based on the ingredient’s similarities. Dataframes were merged on the jupyter notebook.

The extracted files were loaded into 8 separate CSVs corresponding to each allergen. Dataframes were created using pandas. The resulting, cleaned DataFrames were imported as tables into SQL.
[allergens_id table image]

[joined products table image] 

[joined subs table image]

[joined symptoms table image]


Sample Queries:
For the Users Information, list all the Ingredients Food Allergens and and their Allergen Id [img_screenshot]
An example of a person having egg allergy. The query below is to get the Allergy_id of the ingredient (Food Allergen) [img]
Users will use the allergen ID to provide the information regarding all the products with that ingredient (Food Allergen) for example here we look for egg(a001) [img]
Users will use the ingredient to provide the information regarding all the substitute of ingredient(Food Allergen) for ex- here we look for Egg(a001)
Users will use the ingredient to provide the information regarding all the symptoms related to ingredient(Food Allergen) for ex- here we look for Egg(a001)
If a person is having a particular symptom for example "Confusion" this query will return all the ingredients(food allergens) which can be associated  with the symptom.

Use of Final Database to answer Hypothetical Questions:
Customers will know what Goya food products to avoid relating to their specific food allergy. 
Customers will	 be able to find substitute ingredients to avoid their specific allergy
Customers will be able to understand the symptoms that comes along with each allergy




Data sources:
List of ingredients for products from the Goya brand.https://world.openfoodfacts.org/brand/goya/ingredients
Substitutes
https://www.medicalnewstoday.com/articles/egg-substitutes#list-of-substitutes
https://www.medicalnewstoday.com/articles/fish-substitute
https://www.outsideonline.com/2392887/milk-alternatives-substitutes-benefits-healthiest
https://thefitcookie.com/healthy-nut-alternatives
https://theveganatlas.com/7-plant-based-seafood-alternatives-that-you-need-to-try/
https://www.livekindly.co/9-vegan-proteins-to-eat-when-youre-allergic-to-soy/
https://www.eatingwithfoodallergies.com/wheat-substitutes/

Symptoms





Libraries/Tech stack used:
Beautiful Soup
PostgreSQL
Python
Pandas
https://app.quickdatabasediagrams.com/#/
 
Things to consider for project/concerns/limitations
	
Should data be visualized through one large database, or a database with multiple schemas?
One database with all food products with allergens
One database with each product by allergen (8)
(milk, eggs, fish, shellfish, tree nuts, peanuts, wheats, soybeans)
The Difference between the two options would be the syntax of the coding of query to either go through one database or multiple schemas  
 
#H3 Contacts/Teams Members:

Abayomi Olujobi
Andy Jagdeo
Saumya Pandey 



