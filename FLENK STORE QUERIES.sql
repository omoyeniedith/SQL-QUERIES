-- FLENKS STORE DATASET
SELECT * FROM tutorial.flenks_store;

SELECT Product, SUM(Unit_Price * Quantity) AS Revenue
FROM tutorial.flenks_store
GROUP BY Product;

SELECT Customer_Name, SUM(Unit_Price * Quantity) AS Total_Spending
FROM tutorial.flenks_store
GROUP BY Customer_Name
ORDER BY Total_Spending DESC
LIMIT 5;

SELECT DISTINCT Category
FROM tutorial.flenks_store;

SELECT Order_ID, (Unit_Price * Quantity) AS Revenue_ON_Each_Sale, CASE 
WHEN (Unit_Price * Quantity) > 10000 THEN "High Sale"
WHEN (Unit_Price * Quantity) BETWEEN 5000 AND 10000 THEN "Medium Sale"
ELSE "Low Sale" END AS Sales_Category
FROM tutorial.flenks_store;


SELECT Category, AVG(Unit_Price) AS Average_Unit_Price
FROM tutorial.flenks_store
GROUP BY Category
ORDER BY Average_Unit_Price DESC;


SELECT Category, SUM(Quantity) AS Total_Quantity
FROM tutorial.flenks_store
GROUP BY Category
HAVING Total_Quantity > 500;
# The above query indicates there are no categories with more than 500 items sold.


SELECT Product, Unit_Price
FROM tutorial.flenks_store
WHERE Unit_Price > (SELECT AVG(Unit_Price) FROM tutorial.flenks_store);


SELECT AVG(Unit_Price) FROM tutorial.flenks_store;
# The answer is "566.3800"

# Next, show all products with their unit price that is greater than "566.3800"
SELECT Product, Unit_Price
FROM tutorial.flenks_store
WHERE Unit_Price > 566.3800; 


SELECT Product, SUM(Unit_Price * Quantity) AS Total_Revenue
FROM tutorial.flenks_store
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 3;


SELECT Country, SUM(Unit_Price * Quantity) AS Total_Revenue
FROM tutorial.flenks_store
GROUP BY Country
ORDER BY Total_Revenue DESC;


SELECT Product, SUM(Unit_Price * Quantity) AS Total_Sales
FROM tutorial.flenks_store
GROUP BY Product
ORDER BY Total_Sales DESC;


SELECT tutorial.employees.first_name AS First_Name, tutorial.employees.last_name AS Last_Name,
tutorial.departments.department_name AS Department_Name
FROM tutorial.employees
JOIN tutorial.departments
ON tutorial.employees.department_id = tutorial.departments.department_id;


SELECT tutorial.departments.department_name AS Department, AVG(tutorial.employees.salary) AS Salary
FROM tutorial.employees
JOIN tutorial.departments
ON tutorial.employees.department_id = tutorial.departments.department_id
GROUP BY Department;

SELECT tutorial.employees.first_name AS Name, tutorial.departments.department_name AS Department,
tutorial.employees.hire_date AS Hired_Date
FROM tutorial.employees
JOIN tutorial.departments
ON tutorial.employees.department_id = tutorial.departments.department_id
WHERE (tutorial.department_name = 'IT' OR tutorial.department_name = 'Marketing') AND hire_date > '2020-12-31';

SELECT tutorial.departments.department_name AS Department, COUNT(tutorial.employees.employee_id) AS Total_Number_Employees
FROM tutorial.employees
RIGHT JOIN tutorial.departments
ON tutorial.employees.department_id = tutorial.departments.department_id
GROUP BY Department;


SELECT tutorial.departments.department_name AS Department, SUM(tutorial.employees.salary) AS Total_Salary_Expense
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id
GROUP BY Department
ORDER BY Total_Salary_Expense DESC;

SELECT departments.department_name AS Department, employees.first_name AS Name, employees.salary AS Salary
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id
ORDER BY Salary DESC
LIMIT 5;

SELECT COUNT(DISTINCT status)
FROM tutorial.attendance;


SELECT first_name AS Name, salary AS Salary, hire_date AS Hire_Date
FROM tutorial.employees
WHERE salary < 60000 AND hire_date > '2018-12-31';

SELECT employees.salary AS Salary, departments.department_name AS Department,
CASE 
WHEN salary < 3000 THEN 'Low'
WHEN salary BETWEEN 3000 AND 7000 THEN 'Medium'
ELSE 'High' END AS Salary_Groups
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id;

SELECT departments.department_name AS Department, AVG(employees.salary) AS Average_Salary
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id
GROUP BY Department
HAVING AVG(salary) > (SELECT AVG(salary) FROM employees);


SELECT AVG(salary) FROM tutorial.employees;
# 65900

SELECT tutorial.departments.department_name AS Department, AVG(employees.salary) AS Average_Salary
FROM tutorial.employees
JOIN tutorial.departments
ON employees.department_id = departments.department_id
GROUP BY Department
HAVING AVG(salary) > 65900;