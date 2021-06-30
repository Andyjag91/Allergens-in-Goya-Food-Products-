SELECT * FROM allergens;
--1)For the Users Information, list all the Ingredients(Food Allergens and) and their Allergen Id
SELECT * FROM allergens;
--2)Ingredients with relate to the allergy_id=a001 which of egg
SELECT ingredient FROM allergens
WHERE allergy_id='a001';


--2) Users will use the allergen ID to provide the information regarding all the products
--with that ingredient(Food Allergen) for ex- here we look for Egg(a002)
SELECT a.allergy_id,p.ingredient,p.products
FROM allergens AS a
INNER JOIN all_products AS p
ON a.allergy_id=p.allergy_id
WHERE a.allergy_id='a001';

--2) Users will use the ingredient to provide the information regarding all the substitute of
-- ingredient(Food Allergen) for ex- here we look for Egg(a002)
SELECT p.ingredient,s.substitute
FROM all_products AS p
INNER JOIN substitutes AS  s
ON p.allergy_id=s.allergy_id
WHERE p.ingredient='egg';
--2) Users will use the ingredient to provide the information regarding all the symptoms related to
-- ingredient(Food Allergen) for ex- here we look for Egg(a002)
SELECT p.ingredient,sy.symptoms
FROM all_products AS p
INNER JOIN symptoms AS  sy
ON p.allergy_id=sy.allergy_id
WHERE p.ingredient='egg';