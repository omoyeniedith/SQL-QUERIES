# SQL Analysis on Flenks Store Dataset
This project contains SQL queries analyzing sales, products, and employee data from the **Flenks Store** and **Employees** datasets.  

## 📊 Dataset Overview
- **Tables used:** `tutorial.flenks_store`, `tutorial.employees`, `tutorial.departments`
- **Columns analyzed:** `Product`, `Category`, `Unit_Price`, `Quantity`, `Country`, etc.

## 🧩 Key Queries and Insights

### 1️⃣ Categories in Store
```sql
SELECT DISTINCT Category
FROM tutorial.flenks_store;

# SQL Analysis on Flenks Store Dataset

This project contains SQL queries analyzing sales, products, and employee data from the **Flenks Store** and **Employees** datasets.  

## 📊 Dataset Overview
- **Tables used:** `tutorial.flenks_store`, `tutorial.employees`, `tutorial.departments`
- **Columns analyzed:** `Product`, `Category`, `Unit_Price`, `Quantity`, `Country`, etc.

## 🧩 Key Queries and Insights

### 1️⃣ Categories in Store
```sql
SELECT DISTINCT Category
FROM tutorial.flenks_store;

Insight: Lists all unique product categories in the store dataset

SELECT Order_ID, (Unit_Price * Quantity) AS Revenue_ON_Each_Sale, 
CASE 
    WHEN (Unit_Price * Quantity) > 10000 THEN "High Sale"
    WHEN (Unit_Price * Quantity) BETWEEN 5000 AND 10000 THEN "Medium Sale"
    ELSE "Low Sale" 
END AS Sales_Category
FROM tutorial.flenks_store;
Insight: Categorizes each sale into “High,” “Medium,” or “Low” based on revenue.
SELECT Category, AVG(Unit_Price) AS Average_Unit_Price
FROM tutorial.flenks_store
GROUP BY Category
ORDER BY Average_Unit_Price DESC;

Insight: Shows which categories are priced highest on average

Section 2 — Employee Analysis
SELECT e.first_name, e.last_name, d.department_name
FROM tutorial.employees e
JOIN tutorial.departments d
ON e.department_id = d.department_id;

Insight: Displays which employees work in which departments.

Conclusion
These queries help uncover product performance, sales patterns, and employee distribution across departments.
