SELECT emp.firstName, emp.lastName,
  CASE WHEN strftime('%m', soldDate) = '01'
    THEN salesAmount END AS JanSales,
  CASE WHEN strftime('%m', soldDate) = '02'
    THEN salesAmount END AS FebSales,
  CASE WHEN strftime('%m', soldDate) = '03'
    THEN salesAmount END AS MarSales,
  CASE WHEN strftime('%m', soldDate) = '04'
    THEN salesAmount END AS AprSales
FROM sales sls
INNER JOIN employee emp
  ON sls.employeeId = emp.employeeId
WHERE sls.soldDate >= '2021-01-01'
AND sls.soldDate < '2021-01-01'
--ORDER BY emp.lastName, emp.firstName