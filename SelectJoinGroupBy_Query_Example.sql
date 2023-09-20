SELECT Staff.STF_ID, Staff.STF_Position, Employee.EMP_Name, Salary.SAL_BasicSalary, Manager.MAN_ID
FROM Staff
JOIN Employee ON Staff.EMP_ID = Employee.EMP_ID
JOIN Employee_Salary ON Employee.EMP_ID = Employee_Salary.EMP_ID
JOIN Salary ON Employee_Salary.SAL_ID = Salary.SAL_ID
JOIN Staff_Manager ON Staff.STF_ID = Staff_Manager.STF_ID
JOIN Manager ON Staff_Manager.MAN_ID = Manager.MAN_ID
WHERE Staff.STF_Position IN ('Waiter', 'Cashier')
AND Salary.SAL_TotalWorkDays = 30
GROUP BY Staff.STF_ID, Staff.STF_Position, Employee.EMP_Name, Salary.SAL_BasicSalary, Manager.MAN_ID;