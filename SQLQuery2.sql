/* Which is the leading brand in the Dips & Salsa category? */

SELECT 
    BRAND,
    COUNT(*) AS product_count
FROM TakeHome.dbo.PRODUCTS
WHERE CATEGORY_2 = 'Dips & Salsa'
GROUP BY BRAND
ORDER BY product_count DESC;


/*This is where the nulls without context are proving to be tricky! The leading brand is Private Label for dips & salsas because the null brand names are showing as the "leading brand" but it's probably a combo of smaller unknown brands. 

