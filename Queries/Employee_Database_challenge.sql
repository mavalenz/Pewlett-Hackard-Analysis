-- DELIVERABLE 1:

-- Step 1. Retrieve the emp_no, first_name, and last_name columns from the employees table.
-- Step 2. Retrieve the title, from_date, to_date columsn from the titles table.
-- Step 3. Create a new table using the INTO clause.
-- Step 4. Join both tables on the primary key.
-- Step 5. Filter the data on the birth_date column to retrieve employees who were born between 1952 and 1955. Then order by employee number.

SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as ti
		ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Step 8. Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
-- Use Dictinct with Orderby to remove duplicate rows
-- Step 9. Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
-- Step 10. Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- Step 11. Create a Unique Titles table using the INTO clause.
-- Step 12. Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e. to_date) of the most recent title.

SELECT DISTINCT ON (emp_no) 
	emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles 
ORDER BY emp_no, to_date DESC;

-- Step 15. Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
-- Step 16. Retrieve the number of titles from the Unique Titles table.
-- Step 17. Create a Retiring Titles table to hold the required information.
-- Step 18. Group the table by title, then sort the count column in descending order.

SELECT COUNT (title),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT (title) DESC;

-- DELIVERABLE 2: write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

-- Step 1. Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Step 2. Retrieve the from_date and to_date columns from the Department Employee table.
-- Step 3. Retrieve the title column from the Titles table.
-- Step 4. Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- Step 5. Create a new table using the INTO clause.
-- Step 6. Join the Employees and the Department Employee tables on the primary key.
-- Step 7. Join the Employees and the Titles tables on the primary key.
-- Step 8. Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- Step 9. Order the table by the employee number.

SELECT DISTINCT ON (e.emp_no)
	e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date, 
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		ON e.emp_no = de.emp_no
	INNER JOIN titles as ti
		ON e.emp_no = ti.emp_no
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
