# SQL Analysis on Flenks Store Dataset
This project contains SQL queries analyzing sales, products, and employee data from the **Flenks Store** and **Employees** datasets.  
# 🧠 SQL PROJECTS – FLENKS STORE & EMPLOYEE DATA ANALYSIS

## 📊 Project Overview
This project demonstrates my ability to analyze real-world datasets using SQL.  
I explored **sales trends**, **customer spending habits**, and **employee insights** using analytical queries.  
These exercises helped strengthen my skills in **aggregation, joins, subqueries, and CASE statements**.

---

## 🏪 FLENKS STORE DATASET

### 🔍 1. Total Revenue by Product
```sql
SELECT Product, SUM(Unit_Price * Quantity) AS Revenue
FROM tutorial.flenks_store
GROUP BY Product;

Insight: This query calculates the total revenue for each product, identifying top-performing items in the store.

👥 2. Top 5 Customers by Spending
SELECT Customer_Name, SUM(Unit_Price * Quantity) AS Total_Spending
FROM tutorial.flenks_store
GROUP BY Customer_Name
ORDER BY Total_Spending DESC
LIMIT 5;

Insight: Helps pinpoint high value customers and informs loyalty strategies

🏷️ 3. Sales Category by Order
SELECT Order_ID, (Unit_Price * Quantity) AS Revenue_ON_Each_Sale, 
CASE 
  WHEN (Unit_Price * Quantity) > 10000 THEN 'High Sale'
  WHEN (Unit_Price * Quantity) BETWEEN 5000 AND 10000 THEN 'Medium Sale'
  ELSE 'Low Sale' 
END AS Sales_Category
FROM tutorial.flenks_store;

Insight: Categorizes each sale into High, Medium, or Low, simplifying trend analysis

💰 4. Products Above Average Price
SELECT Product, Unit_Price
FROM tutorial.flenks_store
WHERE Unit_Price > (SELECT AVG(Unit_Price) FROM tutorial.flenks_store);

Insight: Highlights premium products priced above the average market rate

🌍 5. Total Revenue by Country
SELECT Country, SUM(Unit_Price * Quantity) AS Total_Revenue
FROM tutorial.flenks_store
GROUP BY Country
ORDER BY Total_Revenue DESC;

Insight: Shows which countries drive the highest store revenue useful for expansion planning.

🧑‍💼 EMPLOYEE MANAGEMENT DATASET
🏢 1. Employee & Department Overview
SELECT employees.first_name AS First_Name, employees.last_name AS Last_Name,
departments.department_name AS Department_Name
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id;

Insight: Combines employee and department details for easy organizational mapping.

💸 2. Average Salary by Department
SELECT departments.department_name AS Department, AVG(employees.salary) AS Salary
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id
GROUP BY Department;

Insight: Highlights departments with the highest average salaries

⏰ 3. Recently Hired in IT & Marketing
SELECT employees.first_name AS Name, departments.department_name AS Department,
employees.hire_date AS Hired_Date
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id
WHERE (department_name = 'IT' OR department_name = 'Marketing') 
AND hire_date > '2020-12-31';


Insight: Identifies recent recruits for trend analysis in tech and marketing teams.

💼 4. Total Salary Expense by Department
SELECT departments.department_name AS Department, SUM(employees.salary) AS Total_Salary_Expense
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id
GROUP BY Department
ORDER BY Total_Salary_Expense DESC;


Insight: Reveals which departments consume the most payroll resources.

💎 5. Top 5 Highest Paid Employees
SELECT departments.department_name AS Department, employees.first_name AS Name, employees.salary AS Salary
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id
ORDER BY Salary DESC
LIMIT 5;


Insight: Lists the top earners across departments, useful for HR analysis.

🧩 Key Skills Demonstrated
✅ Aggregate functions (SUM, AVG, COUNT)
✅ Joins (INNER, RIGHT JOIN)
✅ Subqueries & nested SELECT statements
✅ CASE logic for categorization
✅ Data-driven storytelling with SQL

🪄 Tools Used

SQL (mySQL workbench)

Visual Studio Code

GitHub for version control and portfolio documentation

🚀 Author
👩‍💻 Omoyeni Edith
Passionate about turning raw data into clear, actionable insights.
📬 LinkedIn https://www.linkedin.com/in/omoyeni-edith-0385a1275/?lipi=urn%3Ali%3Apage%3Ad_flagship3_feed%3BRZdL57CIQJWyPwXt9bgRJQ%3D%3D
 | GitHub