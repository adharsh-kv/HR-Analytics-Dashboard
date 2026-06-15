# HR-Analytics-Dashboard
An end-to-end data analytics project designed to track key human resource metrics, evaluate workforce performance, and understand employee attrition patterns using SQL and Power BI.

---

## 📝 Project Description
Managing workforce performance and retaining top talent is a major challenge for modern organizations. This project analyzes an HR dataset sourced from **Kaggle** containing records of **1,413 employees** to uncover trends related to employee demographics, work-life balance, and departmental structures.

By integrating data transformation, relational database queries, and interactive visuals, this project answers critical HR questions such as:
* How does job role impact the average performance rating of employees?
* What role does overtime play in workforce distribution?
* Which age groups and departments experience the highest employee numbers and attrition?

### 💡 Business Value & Impact
* **Performance Tracking:** Highlights that *Managers* and *Manufacturing Directors* maintain the highest average performance ratings.
* **Workforce Demographics:** Identifies that the **26-35 age group** forms the largest part of the workforce, helping HR tailor recruitment and engagement strategies.
* **Operational Planning:** Maps distribution across departments, showing that the *Research & Development* department holds the highest employee count.

---

## 🚀 Dashboard Preview

### HR Analytics Dashboard
![HR Analytics Dashboard](hr_analytics_Dashboard.jpg)

---

## 🛠️ Project Workflow & Tech Stack

### 1. Data Sourcing & ETL (Power Query)
* **Source:** Sourced raw HR data from **Kaggle**.
* **Data Cleaning:** Imported data into Power Query to filter out noise, handle missing values, and verify correct data types.
* **Optimization:** Cleaned and structured columns for seamless integration with charts.

### 2. Exploratory Data Analysis (SQL)
Before visualizing, basic analysis and data validation were performed using **SQL** to ensure data integrity and query key insights:
```sql
-- Example 1: Finding total employees and average age
SELECT COUNT(*) AS total_employees, AVG(age) AS average_age 
FROM hr_data;

-- Example 2: Checking employee count by Department
SELECT department, COUNT(*) AS employee_count 
FROM hr_data 
GROUP BY department 
ORDER BY employee_count DESC;
