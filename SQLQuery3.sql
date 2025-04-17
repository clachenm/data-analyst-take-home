/* Who are Fetch’s power users? */ 

SELECT TOP 5 
    USER_ID,
    COUNT(DISTINCT RECEIPT_ID) AS receipt_count
FROM TakeHome.dbo.TRANSACTIONS
GROUP BY USER_ID
ORDER BY receipt_count DESC;

/* The assumption here is a power user is someone who scans a lot of receipts. The assumption is "Top Users" is limited to five. When looking at top 5 their USER_IDs are:
62925c1be942f00613f7365e
64e62de5ca929250373e6cf5
64063c8880552327897186a5
604278958fe03212b47e657b
609af341659cf474018831fb */