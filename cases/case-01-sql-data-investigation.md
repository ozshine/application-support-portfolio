# Case 1: SQL Data Investigation

## Scenario
A user reported that several expected records were not visible in the business application.

## Business Impact
The issue affected reporting accuracy and delayed operational follow-up.

## Initial Hypotheses
- Records were not created correctly
- Records were created but filtered out
- Records existed but had incorrect status values
- Data synchronization failed

## Investigation Steps
1. Confirmed the expected records and relevant time range
2. Queried the main table for missing entries
3. Checked for duplicate or inconsistent status values
4. Compared related tables using joins
5. Identified mismatch between source and target data

## SQL Used
See:
- `/sql/case-01-find-missing-records.sql`
- `/sql/case-01-find-duplicates.sql`
- `/sql/case-01-status-validation.sql`

## Findings
The records existed in the source table but failed to update correctly in the target table because of a status-mapping issue.

## Likely Root Cause
A data-handling or transformation issue caused invalid status mapping during processing.

## Recommended Next Actions
- Escalate to engineering or data team
- Validate status mapping logic
- Re-run affected records if appropriate
- Add monitoring for future failures

## Support Analyst Value Demonstrated
- Structured troubleshooting
- SQL-based investigation
- Data validation
- Clear escalation reasoning
