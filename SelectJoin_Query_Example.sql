SELECT Employee.EMP_Name, Education.EDU_SchoolName
FROM Employee
JOIN Education ON Employee.EMP_ID = Education.EMP_ID;