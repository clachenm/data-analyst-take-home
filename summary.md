Hello, 

Thanks for the opportunity to review the Fetch data sets on users, products and transactions. Below you will find a summary of my findings from the analysis, and a few questions that would help clarify some future work. 

Exploratory Data Analysis 
There are several fields contain missing or inconsistent values. 
-	The products table has a large number of missing brand names and placeholder manufacturers. 
-	The users table has several incomplete values for birth_date, gender and language, which can really limit our demographic insight. 
-	The transactions table has mixed formats for the quantity and sale fields (ex. “zero” vs. “0”), which I ended up standardizing as part of the cleaning.

These issues are approachable with some data cleaning and didn’t block any analysis but resolving them in the future can help us get a better understanding of the data and therefore enhance reporting capabilities. 

An interesting trend that I noticed was that our younger users are significantly more engaged, especially users from about 20-30. This could help with targeted campaigns. 

Some follow up questions I have for you: 
1)	Can null brands or placeholders be treated as valid or removed from analysis? 
2)	Do blank sale values imply $0 or is this a scan issue? 
3)	Is there any additional retention data I can access to better define “power users” and loyalty? 

Thanks in advance for your help and let me know if you have any further questions! 

Best, 
Cara
