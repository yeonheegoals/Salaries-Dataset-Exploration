-- 1. Switch to the appropriate database
USE data_new;

-- 2. Show all tables in the current database
SHOW TABLES;

-- 3. Describe the structure of the salaries table
DESCRIBE salaries;

-- 4. Show only the EmployeeName and JobTitle from the salaries table
SELECT EmployeeName, JobTitle FROM salaries;

-- 5. Show the total number of employees in the salaries table
SELECT COUNT(*) FROM salaries;

-- 6. Show distinct job titles from the salaries table
SELECT DISTINCT JobTitle FROM salaries;

-- 7. Show JobTitle and OvertimePay for records where OvertimePay is greater than 50000
SELECT JobTitle, OvertimePay FROM salaries WHERE OvertimePay > 50000;

-- 8. Calculate the average BasePay of employees
SELECT AVG(BasePay) AS "Avg BasePay" FROM salaries;

-- 9. Show the top 10 employees with the highest TotalPay
SELECT EmployeeName, TotalPay FROM salaries ORDER BY TotalPay DESC LIMIT 10;

-- 10. Calculate the average of BasePay, OvertimePay, and OtherPay for each employee
SELECT EmployeeName, (BasePay + OvertimePay + OtherPay) / 3 AS avg_of_bp_op_otherpay FROM salaries;

-- 11. Show EmployeeName and JobTitle for employees with 'Manager' in their job title
SELECT EmployeeName, JobTitle FROM salaries WHERE JobTitle LIKE '%Manager%';

-- 12. Show EmployeeName and JobTitle for employees who are not Managers
SELECT EmployeeName, JobTitle FROM salaries WHERE JobTitle <> 'Manager';

-- 13. Select all records where TotalPay is between 50000 and 75000
SELECT * FROM salaries WHERE TotalPay >= 50000 AND TotalPay <= 75000;

-- 14. Select all records where TotalPay is between 50000 and 75000 using BETWEEN clause
SELECT * FROM salaries WHERE TotalPay BETWEEN 50000 AND 75000;

-- 15. Select all records where BasePay is less than or equal to 50000 or TotalPay is greater than 100000
SELECT * FROM salaries WHERE BasePay <= 50000 OR TotalPay > 100000;

-- 16. Select records where TotalPayBenefits is between 125000 and 150000 and JobTitle includes 'Director'
SELECT * FROM salaries WHERE TotalPayBenefits BETWEEN 125000 AND 150000 AND JobTitle LIKE "%Director%";

-- 17. Show all records ordered by TotalPayBenefits in descending order
SELECT * FROM salaries ORDER BY TotalPayBenefits DESC;

-- 18. Calculate average BasePay for each JobTitle and filter to show only those with average BasePay >= 100000
SELECT JobTitle, AVG(BasePay) AS "avgbasepay" FROM salaries GROUP BY JobTitle HAVING AVG(BasePay) >= 100000 ORDER BY avgbasepay DESC;

-- 19. Show all records in the salaries table
SELECT * FROM salaries;

-- 20. Remove the 'Notes' column from the salaries table
ALTER TABLE salaries DROP COLUMN Notes;

-- 21. Show all records in the salaries table after the column deletion
SELECT * FROM salaries;

-- 22. Increase BasePay by 10% for all employees with 'Manager' in their JobTitle
UPDATE salaries SET BasePay = BasePay * 1.1 WHERE JobTitle LIKE "%Manager%";

-- 23. Show all records in the salaries table after the update
SELECT * FROM salaries;

-- 24. Count the number of employees where OvertimePay is 0 or NULL
SELECT COUNT(*) FROM salaries WHERE OvertimePay = 0 OR OvertimePay IS NULL;

-- 25. Disable safe update mode temporarily
SET SQL_SAFE_UPDATES = 0;

-- 26. Delete records where OvertimePay is 0
DELETE FROM salaries WHERE OvertimePay = 0;


