# ITI DB Queries

### Part 01 (ITI DB)

1. Display the number of courses for each topic name.

2. Select Supervisor first name and the count of students who supervises on them.

3. Display instructors who have salaries less than the average salary of all instructors.

4. Display the Department name that contains the instructor who receives the minimum salary.

### Part 02 (MyCompany DB)

1. For each project, list the project name and the total hours per week (for all employees) spent on that project.

2. For each department, retrieve the department name and the maximum, minimum, and average salary of its employees.

3. Display the data of the department which has the smallest employee ID over all employees' IDs.

4. List the last name of all managers who have no dependents.

5. For each department, if its average salary is less than the average salary of all employees, display its number, name, and number of its employees.

6. Try to get the max 2 salaries using subquery.

7. Display the employee number and name if he/she has at least one dependent (use exists keyword) self-study.

### Part 03 (ITI DB)

1. Write a query to select the highest two salaries in each department for instructors who have salaries. (Using one of Ranking Functions)

2. Write a query to select a random student from each department. (Using one of Ranking Functions)

### Part 04 (Restore AdventureWorks2012 Database)

1. Display the SalesOrderID, ShipDate of the SalesOrderHeader table (Sales schema) to designate SalesOrders that occurred within the period ‘7/28/2002’ and ‘7/29/2014’.

2. Display only Products (Production schema) with a StandardCost below $110.00 (show ProductID, Name only).

3. Display ProductID, Name if its weight is unknown.

4. Display all Products with a Silver, Black, or Red Color.

5. Display any Product with a Name starting with the letter B.

6. Run the following Query:  
   `UPDATE Production.ProductDescription SET Description = 'Chromoly steel_High of defects' WHERE ProductDescriptionID = 3`  
   Then write a query that displays any Product description with underscore value in its description.

7. Display the Employees HireDate (note no repeated values are allowed).

8. Display the Product Name and its ListPrice within the values of 100 and 120. The list should have the following format:  
   "The [product name] is only! [List price]" (the list will be sorted according to its ListPrice value).

## Database

To restore the database, download it from the link below:

👉 [Download the DB File](https://drive.google.com/file/d/1lQigj3HhHY_fZKTNVFNQDLc-_v2i02jB/view?usp=sharing)
