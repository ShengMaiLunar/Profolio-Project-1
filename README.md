# King's County Housing Market Analysis 🏡

## Overview
This project analyzes housing prices in King’s County using SQL, R, Python, and Tableau. 

## Summary
Housing prices in King County vary widely, and buyers, sellers, and real estate investors need a better understanding of what drives these prices. This project analyzes historical sales data to identify key patterns and build predictive models to estimate house prices. The dataset, sourced from Kaggle(https://www.kaggle.com/datasets/harlfoxem/housesalesprediction/data), contains 21,613 house sales from 2014 to 2015, including details such as price, number of bedrooms, bathrooms, living area, and condition. To start, I cleaned the data by removing duplicates and checking for missing values to ensure reliability. I used SQL to extract insights, such as the average sale price, price distributions, the number of flipped houses, trends in different zip codes, and how property condition and grade impact sales. The results were exported to Excel and visualized in Tableau, making it easier to see trends in pricing and market behavior.

For deeper analysis, I used Python and R to explore the relationships between price and different variables like square footage, bedrooms, and bathrooms. I built multiple regression models to predict house prices and compared different approaches, including linear regression, Ridge, Lasso, and random forest models, to find the best predictive performance. The analysis showed that while location and size are important, property grade and condition also play a big role in determining price. I also found that waterfront properties tend to be valued much higher, and 93.22% of transactions were homes priced under $1M, showing that the market is mostly made up of mid-range properties.
While my models performed reasonably well, there’s definitely room for improvement. Adding more data—such as crime rates, school quality, or economic factors—could improve prediction accuracy. I also considered using web scraping to pull in real-time listings from sites like Redfin, which could help expand the dataset. Another interesting direction would be time-series forecasting to analyze how prices change over time.
This project gave me a lot of hands-on experience with SQL, machine learning, and data visualization. I also gained a better understanding of how to clean and structure data for analysis. If I had more time, I’d focus on gathering additional data and testing more advanced modeling techniques to refine the predictions further.

## Key Insights
- The most expensive zip codes are 98039, 98004, and 98040
- Majority of houses are prices in between 300K - 400K
- 93.22% of housing transaction between 2013 and 2014 is under $1M
- Larger homes tend to have higher prices, but property grade and condition significantly impact valuation, Houses with condition 4 and grade 13 have significantly higher prices.
- Waterfront properties command a premium, making them valuable for investors.

## Tools Used
- **SQL**: Extracted and cleaned data, data exploration.
- **Tableau**: Visualized trends and distributions.
- **R**: Conducted regression analysis, feature engineering, and random forest modeling.
- **Python (Pandas, Seaborn, Scikit-learn)**: Complementary data analysis.

## File Structure
📂 `SQL/` – SQL queries  
📂 `query_excel_files/` – SQL results exported into excel, used for Tableau   
📂 `Tableau/` – Visualization on Tableau using SQL results
📂 `R/` – R scripts for analysis and modeling  
📂 `Python/` – Jupyter notebooks for additional analysis   

