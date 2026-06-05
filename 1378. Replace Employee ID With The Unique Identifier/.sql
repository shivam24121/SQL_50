SELECT e.unique_id,emp.name
FROM Employees emp
LEFT JOIN 
EmployeeUNI e
ON e.id=emp.id;
