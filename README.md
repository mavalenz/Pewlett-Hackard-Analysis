# Pewlett-Hackard-Analysis

## Overview
### We have been tasked to help Bobby prepare his analysis for Pewlett-Hackard. The preparation for this project analysis includes the following:

1. Review and understand the data we will be importing.
2. Identify how the csv data files are connected through *primary* and *foreign* keys.
3. Using an online tool called *Quick Database Diagrams*, create a map of the database or in other words **Model the data**. This is essentially creating a flowchart showing each table in the database and the flow of data from one table to another.
4. Create a database in Postgres for Pewlett-Hackard employees data.
5. Create six tables for each of the CSV files, mapping out the *primary* and *foreign* keys as well as assign the data types.
6. Import the data from the CSV files into the created tables.
7. Perform an analysis for:
	- Future-proofing the company by determining how many people will be retiring.
	- Of those retiring, determine who is eligible for a retirement package and query the data to be able to recognize the amount retiring by department.
	- **Employee Information:** A list of employees containing their unique employee number, their last name, first name, gender, and salary.
	- **Management:** A list of managers for each department, including the department number, name, manager's employee number, last name, first name, and the starting and ending employment dates.
	- **Department Retirees:** An updated current_emp list that includes everything it currently has, but also the employee's departments.
	- The Number of Retiring Employees by Title.
	- Identify the Employees Eligble for the Mentorship Program.

## Results
### Based on our analysis we can make the following observations:
1. A total of *90,398* employees will be retiring.
2. As you can see in the table below, there are more *senior engineers* retiring than the other retiring employee titles.

![Employees_Retiring_By_Title](https://github.com/mavalenz/Pewlett-Hackard-Analysis/blob/main/Employees_Retiring_By_Title.PNG)

3. A total of *1,549* employees are eligible for the mentoring program.
4. In the table below, there are more *Senior Staff* employees that are eligible for the mentoring program.

![Mentoring_Eligibility_By_Title](https://github.com/mavalenz/Pewlett-Hackard-Analysis/blob/main/Mentoring_Eligibility_By_Title.PNG)

## Summary
### In summary, based on our findings a few suggestions can be made:
- It seems in order to keep the company operating effectively once the **"Silver Tsunami"** begings to show impact is to fill around the same number of those retiring which seems to be ~90,000 plus employees.
- There doesn't seem to be enough qualified retirement-ready employees in the departments to mentor the next generation of P-H employees. Taking a look at the table below, which shows the count of employees by title eligible for mentorship, the number of those retiring versus the number eligible for mentoring are not comparable.

![Mentoring_Eligibility_By_Title](https://github.com/mavalenz/Pewlett-Hackard-Analysis/blob/main/Mentoring_Eligibility_By_Title.PNG)
**For example, *senior engineers* have the most employees retiring however, they fall to the lower end of amount of employees eligible for mentoring.

- In addition to the additional above query table, another query that would help potential expand the number of eligible mentoring employees would be to look at the number of roles each of the retiring employees had. The number of roles/titles may indicate their level of experience at the firm and would have a lot to of experience and knowledge to offer to the next generation of PH employees. See the query below that will help pull this data.

![Employees_Number_of_Titles_Query](https://github.com/mavalenz/Pewlett-Hackard-Analysis/blob/main/Employees_Number_of_Titles_Query.PNG)
