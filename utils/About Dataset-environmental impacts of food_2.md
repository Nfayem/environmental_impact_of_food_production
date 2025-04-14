# Features and Columns  
The raw dataset comprises environmental impact data for **43 distinct food products**. Feature engineering will be employed to classify these products into **animal-based** and **plant-based** categories, with additional subcategories to facilitate a more detailed analysis. Additionally, the dataset contains verbose feature names, which will be standardized and systematically renamed to more concise representations, enhancing readability and usability. The revised feature nomenclature is outlined below:

## Food Product Categories and Subcategories
| **Food_Category**         | **Food_Subcategory**         | **Food_Product**              |
|--------------------------|-----------------------------|----------------------------------|
| **Animal-Based Foods**   | **Red Meat**               | Beef (beef herd), Beef (dairy herd), Lamb & Mutton, Pig Meat |
|                          | **Poultry**                | Poultry Meat |
|                          | **Dairy**                  | Milk, Cheese |
|                          | **Eggs & Seafood**         | Eggs, Fish (farmed), Shrimps (farmed) |
| **Plant-Based Foods**    | **Cereal Grains & Staples**| Wheat & Rye (Bread), Maize (Meal), Barley (Beer), Oatmeal, Rice, Potatoes, Cassava |
|                          | **Legumes & Pulses**       | Other Pulses, Peas |
|                          | **Nuts & Seeds**           | Nuts, Groundnuts |
|                          | **Soy Products**           | Soymilk, Tofu |
|                          | **Vegetable Oils**         | Soybean Oil, Palm Oil, Sunflower Oil, Rapeseed Oil, Olive Oil |
|                          | **Vegetables**             | Onions & Leeks, Root Vegetables, Brassicas, Other Vegetables |
|                          | **Fruits**                 | Tomatoes, Citrus Fruit, Bananas, Apples, Berries & Grapes, Other Fruit |
|                          | **Beverages & Alcohol**    | Wine |
|                          | **Stimulants & Confectionery** | Coffee, Dark Chocolate |
|                          | **Sugars**                 | Cane Sugar, Beet Sugar |

After categorization, the dataset comprises:  
- **Animal-Based Foods:** 10 distinct products  
- **Plant-Based Foods:** 33 distinct products     

## Environmental Impact Features  
The raw dataset contains lengthy feature names, which will be standardized and renamed to more concise forms for improved readability and usability, as outlined below: 

| **Original Feature Name** | **Renamed Feature Name** | **Description** | **Units / Example Values** |  
|---------------------------|-------------------------|-----------------|----------------------------|  
| Land use change | Land_use_Change | GHG emissions from land use change. | kg CO₂-equivalent per kg of food |  
| Animal Feed | Animal_Feed | Emissions from producing feed for livestock. | kg CO₂-equivalent per kg of food |  
| Farm | Farm | Direct emissions from farming activities. | kg CO₂-equivalent per kg of food |  
| Processing | Processing | Emissions from food processing. | kg CO₂-equivalent per kg of food |  
| Transport | Transport | Emissions from transporting food. | kg CO₂-equivalent per kg of food |  
| Packaging | Packaging | Emissions from food packaging. | kg CO₂-equivalent per kg of food |  
| Retail | Retail | Emissions from storing and selling food. | kg CO₂-equivalent per kg of food |  
| Total emissions | Total_emissions | Sum of all emissions. | kg CO₂-equivalent per kg of food |  
| Eutrophying emissions per 1000kcal (gPO₄eq per 1000kcal) | Eutro_1000kcal | Eutrophying emissions per 1000 kcal. | g PO₄-equivalent per 1000 kcal of food |  
| Eutrophying emissions per kilogram (gPO₄eq per kilogram) | Eutro_kg | Eutrophying emissions per kg of food. | g PO₄-equivalent per kg of food |  
| Eutrophying emissions per 100g protein (gPO₄eq per 100 grams protein) | Eutro_100gP | Eutrophying emissions per 100 g of protein. | g PO₄-equivalent per 100 g protein of food |  
| Freshwater withdrawals per 1000kcal (liters per 1000kcal) | Water_1000kcal | Freshwater withdrawals per 1000 kcal. | Liters per 1000 kcal of food |  
| Freshwater withdrawals per 100g protein (liters per 100g protein) | Water_100gP | Freshwater withdrawals per 100 g protein. | Liters per 100 g protein of food |  
| Freshwater withdrawals per kilogram (liters per kilogram) | Water_kg | Freshwater withdrawals per kg of food. | Liters per kg of food |  
| Greenhouse gas emissions per 1000kcal (kgCO₂eq per 1000kcal) | GHG_1000kcal | GHG emissions per 1000 kcal. | kg CO₂-equivalent per 1000 kcal of food |  
| Greenhouse gas emissions per 100g protein (kgCO₂eq per 100g protein) | GHG_100gP | GHG emissions per 100 g protein. | kg CO₂-equivalent per 100 g protein of food |  
| Land use per 1000kcal (m² per 1000kcal) | Land_1000kcal | Land use per 1000 kcal. | m² per 1000 kcal of food |  
| Land use per kilogram (m² per kilogram) | Land_kg | Land use per kg of food. | m² per kg of food |  
| Land use per 100g protein (m² per 100g protein) | Land_100gP | Land use per 100 g protein. | m² per 100 g protein of food |  
| Scarcity-weighted water use per kilogram (liters per kilogram) | SW_Water_kg | Scarcity-weighted water use per kg. | Liters per kg of food |  
| Scarcity-weighted water use per 100g protein (liters per 100g protein) | SW_Water_100gP | Scarcity-weighted water use per 100 g protein. | Liters per 100 g protein of food |  
| Scarcity-weighted water use per 1000kcal (liters per 1000 kilocalories) | SW_Water_1000kcal | Scarcity-weighted water use per 1000 kcal. | Liters per 1000 kcal of food |  

## Summary of Key Metrics
| Metric Category | Features |
|----------------|----------|
| **Emissions** | Land_use_Change, Animal_Feed, Farm, Processing, Transport, Packaging, Retail, Total_emissions, GHG_1000kcal, GHG_100gP |
| **Eutrophication Impact** | Eutro_1000kcal, Eutro_kg, Eutro_100gP |
| **Water Use** | Water_1000kcal, Water_100gP, Water_kg |
| **Land Use** | Land_1000kcal, Land_kg, Land_100gP |
| **Scarcity-Weighted Water Use** | SW_Water_kg, SW_Water_100gP, SW_Water_1000kcal |

## Summary: When to Use Which Metric?

| Metric      | Best for | Example Questions |
|------------|---------|------------------|
| **Per kg of food** | **Total impact of producing 1 kg** | "Which food has the highest emissions per kg?" |
| **Per 1000 kcal** | **Calorie efficiency of food production** | "Which foods provide calories with the lowest environmental impact?" |
| **Per 100g protein** | **Protein efficiency of food production** | "Which foods provide protein with the lowest environmental impact?" |  

