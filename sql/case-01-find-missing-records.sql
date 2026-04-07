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
