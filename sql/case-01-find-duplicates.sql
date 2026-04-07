-- Case 1: Check for duplicate business keys

SELECT
    customer_id,
    business_key,
    COUNT(*) AS duplicate_count
FROM source_records
GROUP BY customer_id, business_key
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;
