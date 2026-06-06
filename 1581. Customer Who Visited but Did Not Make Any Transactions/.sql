SELECT V.customer_id,COUNT(*) 
AS count_no_trans
FROM VISITS V
LEFT JOIN 
Transactions T
ON V.VISIT_ID=T.VISIT_ID
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;
