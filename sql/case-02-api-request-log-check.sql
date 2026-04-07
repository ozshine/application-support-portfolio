-- Case 2: Check API request log entries for failed calls

SELECT
    request_id,
    endpoint,
    response_code,
    error_message,
    created_at
FROM api_request_log
WHERE endpoint = '/v1/customer/profile'
  AND created_at >= '2026-01-10'
  AND response_code >= 400
ORDER BY created_at DESC;
