-- Case 4: Check recent user session or page request log entries

SELECT
    user_id,
    page_name,
    request_status,
    error_code,
    created_at
FROM page_request_log
WHERE user_id = 'USER1001'
  AND page_name = 'AccountDashboard'
ORDER BY created_at DESC;
