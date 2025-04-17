/*What are the top 5 brands by receipts scanned among users 21 and over?*/

SELECT TOP 5 
	p.BRAND, 
	COUNT(DISTINCT t.RECEIPT_ID) AS reciept_count
FROM TakeHome.dbo.TRANSACTIONS AS t 
JOIN TakeHome.dbo.USERS as u 
	ON t.USER_ID = u.ID 
JOIN TakeHome.dbo.PRODUCTS as p 
	ON t.BARCODE = p.BARCODE 
WHERE 
	DATEDIFF(YEAR, u.BIRTH_DATE, GETDATE())
		- CASE 
			WHEN MONTH (GETDATE()) < MONTH(u.BIRTH_DATE)
			 OR (MONTH(GETDATE()) = MONTH(u.BIRTH_DATE) AND DAY(GETDATE()) < DAY(u.BIRTH_DATE)) 
			 THEN 1 
			 ELSE 0 
		   END >= 21
	AND p.BRAND IS NOT NULL 
GROUP BY p.BRAND 
ORDER BY reciept_count DESC; 