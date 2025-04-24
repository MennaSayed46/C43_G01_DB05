--------------------------------------------part01--------------------------------------------
use ITI
--p01
select Top_Id,count(Crs_Id) as 'Number of courses'
from Course
group by Top_Id 

--p02
select super.St_Fname ,COUNT(s.St_super)
from Student S inner join Student Super
on S.St_super=Super.St_Id
where s.St_super is not null
group by Super.St_Fname

--p03
select Ins_Name ,Salary
from Instructor
where salary <(select AVG(Salary)
from Instructor
)

--p04
select Dept_Name
from Instructor inner join Department
on Instructor.Dept_Id=Department.Dept_Id
where Salary<(select AVG(Salary)
from Instructor
)
--------------------------------------------part02--------------------------------------------
use MyCompany
--p01
select Pname ,SUM(w.Hours)
from Project P inner join Works_for W
on P.Pnumber=W.Pno
group by Pname

--p02
select Dnum ,MAX(Salary) as 'maxSalary',MIN(Salary) as 'MinSaalry' ,AVG(Salary) as 'AvgSalary'
from Departments inner join Employee
on Employee.Dno=Departments.Dnum
group by Dnum

--p03
select * 
from Departments
where MGRSSN =(select MIN(SSN)
from Employee
)

--p04
select Lname
from Employee
where SSN not in(
select ESSN
from Dependent
);

--p05
select Dname,Dnum, avg(Employee.Salary) as 'averageSalaerPerDept',COUNT(Employee.Fname) as 'counter'
from Employee inner join Departments
on Employee.Dno = Departments.Dnum
group by Dname ,Dnum
having  avg(Employee.Salary) <(
select AVG(Salary)
from Employee
);

--p06
select MAX(Salary)
from Employee
where Salary < (
    select MAX(Salary)
    from Employee
);

--p07

--without using keyword exists
select Fname,Lname,SSN , COUNT(ESSN)
from Dependent inner join Employee
on Dependent.ESSN=Employee.SSN
group by Fname,Lname,SSN 
having COUNT(ESSN)>=1

--with using keyword exists
select SSN, Fname, Lname
from Employee E
where EXISTS (
    select 1
    from Dependent D
    where D.ESSN = E.SSN
);



--------------------------------------------part03--------------------------------------------
use ITI

--p01
select * 
from (
	select Dept_Id , Ins_Name,Salary ,ROW_NUMBER() over (partition by dept_id order by salary) as RN
	from Instructor

)as Ranked
where RN in (1,2)

--p02
select * 
from(select St_Fname ,ROW_NUMBER() over (partition by dept_id order by NEWID()) as RN
from Student
) AS RANKED
where RN=1

--------------------------------------------part04--------------------------------------------
use AdventureWorks2012
--p01
select SalesOrderID ,ShipDate
from [Sales].[SalesOrderHeader]
where ShipDate between '7/28/2002' and '7/29/2014'

--p02c
select ProductID,Name
from [Production].[Product]
where StandardCost<110


--p03
select ProductID,Name
from [Production].[Product]
where Weight is Null

--p04
select *
from [Production].[Product]
where Color in ('silver','black','red')

--p05
select Name  
from [Production].[Product]
where Name like 'B%'

--p06
UPDATE Production.ProductDescription 
SET Description = 'Chromoly steel_High of defects' 
WHERE ProductDescriptionID = 3

select *
from [Production].[ProductDescription]
where Description like '%[_]%'

--p07
select distinct HireDate
from [HumanResources].[Employee]

--p08
select CONCAT_WS(' ' ,'The' ,Name,'is only!') as [Product Name] ,ListPrice AS [List Price]
from [Production].[Product]
where ListPrice between 100 AND 120
