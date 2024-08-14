SELECT emp.employeeId,
    count(*)AS NumOfCarsSold,
    MIN(salesAmount) as MinSalesAmt,
    MAX(salesAmount) as MaxSalesAmt
FROM sales sls 
INNER JOIN employee emp 
    ON sls.employeeId = emp.employeeId
WHERE sls.soldDate >= date('now','start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName
