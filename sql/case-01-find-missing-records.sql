-- Case 1: Identify expected records that are missing from the target table

SELECT
    s.record_id,
    s.customer_id,
    s.created_at,
    s.status AS source_status,
    t.record_id AS target_record_id,
    t.status AS target_status
FROM source_records s
LEFT JOIN target_records t
    ON s.record_id = t.record_id
WHERE s.created_at >= '2026-01-01'
  AND s.created_at < '2026-01-08'
  AND s.customer_id = 'CUST1001'
  AND t.record_id IS NULL
ORDER BY s.created_at DESC;
case-01-find-duplicates.sql
-- Case 1: Check for duplicate business keys

SELECT
    customer_id,
    business_key,
    COUNT(*) AS duplicate_count
FROM source_records
GROUP BY customer_id, business_key
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;
case-01-status-validation.sql
-- Case 1: Identify records with unexpected or incomplete status mapping

SELECT
    s.record_id,
    s.customer_id,
    s.status AS source_status,
    t.status AS target_status,
    s.updated_at
FROM source_records s
LEFT JOIN target_records t
    ON s.record_id = t.record_id
WHERE s.customer_id = 'CUST1001'
  AND (
      t.status IS NULL
      OR t.status NOT IN ('ACTIVE', 'COMPLETED', 'READY')
  )
ORDER BY s.updated_at DESC;
