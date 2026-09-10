# 🛒 Zepto SQL Data Analysis Project

## 📌 Project Overview

This project analyzes a **Zepto inventory dataset** using MySQL.
The aim of this project is to practice **data exploration, data cleaning, and business analysis using SQL**.

The dataset contains product-level information such as category, pricing, discounts, stock availability, and product weight.
Using SQL queries, we extract meaningful insights that can help understand product pricing strategies, inventory distribution, and discount trends.

---

## 📂 Dataset

Dataset used in this project:

**Zepto Inventory Dataset**

The dataset contains approximately **3700+ product records**.

### Dataset Columns

* Category
* Product Name
* MRP (Maximum Retail Price)
* Discount Percentage
* Available Quantity
* Discounted Selling Price
* Weight in grams
* Out of Stock Status
* Quantity

---

## 🗄️ Database Setup

A new database was created in **MySQL** to store and analyze the dataset.

Steps performed:

* Created a database for the project
* Created a table to store product information
* Imported the dataset into MySQL
* Verified the table structure and records

---

## 🔍 Data Exploration

Initial exploration was performed to understand the dataset structure.

Tasks performed:

* Viewing the table structure
* Checking total number of rows
* Inspecting sample records
* Understanding column data types

This step helps ensure the dataset is properly loaded and ready for analysis.

---

## 🧹 Data Cleaning

The dataset stored product prices in **paise**, which needed conversion.

Cleaning steps:

* Converted prices from **paise to rupees**
* Modified the price columns to **decimal format**
* Verified the updated values

This ensures accurate price-based analysis.

---

## 📊 Business Analysis

The following analytical questions were explored:

### 1️⃣ Top 10 Best Value Products

Identify products offering the **highest discount percentage**.

---

### 2️⃣ High Price Products That Are Out of Stock

Find products that have **high MRP but are currently unavailable**.

---

### 3️⃣ Estimated Revenue by Category

Calculate the **estimated revenue potential of each category** based on available stock.

---

### 4️⃣ Premium Products With Low Discount

Identify products where:

* MRP is greater than ₹500
* Discount percentage is less than 10%

---

### 5️⃣ Categories With Highest Average Discount

Determine which categories offer the **highest average discount**.

---

### 6️⃣ Best Value Products Based on Price per Gram

Calculate **price per gram** for products above 100g to determine better value products.

---

### 7️⃣ Product Weight Segmentation

Products were grouped into categories based on weight:

* Low weight products
* Medium weight products
* Bulk products

---

### 8️⃣ Total Inventory Weight by Category

Calculate the **total inventory weight available in each product category**.

---

## 🧠 Skills Demonstrated

* SQL Data Exploration
* Data Cleaning
* Aggregation Functions
* Business Data Analysis
* Inventory Analysis
* Pricing Analysis

---

## 🛠️ Tools Used

* MySQL
* MySQL Workbench
* SQL

---

## 📁 Project Structure

```
zepto-sql-project
│
├── zepto_v2.csv
├── zepto_analysis.sql
└── README.md
```

---

## 📊 Dataset Source

This project uses the **Zepto Inventory Dataset** available on Kaggle.

Dataset link:
https://www.kaggle.com/datasets/palvinder2006/zepto-inventory-dataset/data?select=zepto_v2.csv

Author: **Palvinder Singh**

Credit goes to the dataset creator for making the dataset publicly available for learning and analysis.

---

## 👨‍💻 Author

**Rohan Kumar Raj**
