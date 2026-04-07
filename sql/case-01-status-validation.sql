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
