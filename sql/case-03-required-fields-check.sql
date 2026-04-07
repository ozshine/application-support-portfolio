-- Case 3: Check whether required workflow fields are completed

SELECT
    case_id,
    field_a,
    field_b,
    field_c,
    approval_flag
FROM workflow_case_data
WHERE case_id = 'CASE20260115';
