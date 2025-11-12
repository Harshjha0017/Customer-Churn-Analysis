📊 Customer Churn Analysis – End-to-End Data Analytics & Machine Learning Project
🔍 Project Overview

This project focuses on analyzing customer churn patterns and building a predictive model to identify customers most likely to leave a telecom service. It demonstrates the complete data analytics workflow — from data cleaning (SQL) to machine learning (Python) to interactive reporting (Power BI) — all integrated in one system.

The project is designed to help businesses understand:

Why customers are leaving (churn reasons)

Which demographic or behavioral factors influence churn

How to predict future churn to improve customer retention

🧱 Project Components
1. SQL Data Engineering

The raw dataset (stg_Churn) was processed using SQL for cleaning, validation, and transformation.

Key Steps

Checking Null Values:
Script: SQLQuery null values.sql
Purpose: Identify columns with missing data using SUM(CASE WHEN … IS NULL THEN 1 ELSE 0 END) queries.

Cleaning Data & Handling Nulls:
Script: SQLQuery removing null.sql
Purpose: Replace missing categorical fields with ‘None’ or ‘No’ using ISNULL() and store cleaned results into prod_Churn.

Creating Views for Analysis:
Script: SQLQuery view table.sql
Created two analytical views:

vw_ChurnData – For customers who have stayed or churned
vw_JoinData – For new customers who joined


Exploratory SQL Analysis:
Script: SQLQuer2.sql
Insights on gender distribution, contracts, customer status, and state-wise churn contribution.

2. Python Machine Learning Model

Notebook: machine_learning model.ipynb
Dataset: Customer_Data.csv (training) and predicted_Data.csv (output)

Key Steps

Imported libraries: pandas, numpy, sklearn, matplotlib

Preprocessing: Encoded categorical variables, handled missing values

Feature Selection: Selected attributes influencing churn — Tenure_in_Months, Contract, Internet_Type, Total_Revenue, etc.

Model: Implemented Logistic Regression and Random Forest Classifier

Evaluation: Measured accuracy, recall, precision, and confusion matrix

Exported predictions to predicted_Data.csv for reporting in Power BI

Outcome

The model achieved strong predictive accuracy in identifying high-risk churn customers, providing actionable insights for retention strategies.

3. Power BI Dashboard

File: Churn Analysis.pbix

Dashboard Features

Customer Segmentation: Churned vs Stayed vs Joined

Demographics: Age group, Gender, and State distribution

Service Insights: Internet type, Contract, and Payment method breakdown

Revenue Impact: Total revenue contribution by churned customers

Churn Reasons: Visual drill-down of key drivers behind churn

Interactive filters enable business users to explore churn trends and customer segments dynamically.

🧩 Tools & Technologies Used
Category	Tools
Database	Microsoft SQL Server
Data Processing	Python (Pandas, NumPy)
Machine Learning	Scikit-learn
Visualization	Power BI
Version Control	GitHub
Data Format	CSV
⚙️ Data Flow
graph LR
A[Customer_Data.csv] --> B[SQL: Data Cleaning]
B --> C[prod_Churn Table]
C --> D[Python: Feature Engineering + ML Model]
D --> E[predicted_Data.csv]
E --> F[Power BI Dashboard]

📈 Business Insights

Customers on month-to-month contracts are most likely to churn.

Fiber internet users show higher churn rates compared to DSL users.

Customers with low tenure and no value-added services tend to leave early.

The top states contributing to churn are identified, enabling region-focused retention campaigns.

🧠 Learning Outcomes

This project demonstrates:

Real-world ETL (Extract, Transform, Load) using SQL.

Building an end-to-end predictive pipeline using Python.

Creating data-driven dashboards for stakeholders.

Integration of machine learning output into BI tools.

🚀 Future Enhancements

Deploying the ML model as an API for live predictions.

Automating data refresh in Power BI via SQL triggers.

Experimenting with XGBoost or LightGBM for better accuracy.

👤 Author

Harsh Jha
