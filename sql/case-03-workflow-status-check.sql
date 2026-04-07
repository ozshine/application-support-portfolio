-- Case 3: Validate workflow state and required approval conditions

SELECT
    workflow_id,
    case_id,
    current_step,
    assigned_role,
    approval_status,
    updated_at
FROM workflow_instances
WHERE case_id = 'CASE20260115'
ORDER BY updated_at DESC;
