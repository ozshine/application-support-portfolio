# Case 1: SQL Data Investigation in a Business Application Context

> Note: This case study is a portfolio-style reconstruction created for professional demonstration purposes. It is designed to reflect realistic support scenarios without disclosing any confidential or proprietary information.

## Scenario
A user reported that several expected records were not visible in a business application. The issue affected downstream reporting and delayed follow-up work, because the missing records were expected to appear in the application after a standard business process had been completed.

From a support perspective, this kind of issue is important because users often describe it as “the system lost my data,” while the actual root cause may be quite different. The records may exist in the database but not display correctly, they may have failed to sync to a target table, or they may have been filtered out by an unexpected status value.

## Business Impact
The immediate impact was operational rather than catastrophic, but still significant:

- users could not see the records they expected to act on  
- reporting accuracy was affected  
- follow-up tasks were delayed  
- confidence in the reliability of the system was reduced  

## Initial Hypotheses
Before querying the data, I defined several possible explanations:

1. the records were never created  
2. the records existed but were not updated correctly  
3. the records existed in one table but had not moved into the expected downstream table  
4. the records had invalid or inconsistent status values  
5. the records were present but excluded by business logic or filtering conditions  

## Investigation Approach

### Step 1: Confirm the expected behavior
First, I clarified:
- what kind of records should appear
- in which screen/report they were expected
- during which time period
- whether all users were affected or only one user/team

### Step 2: Check for record existence
I queried the source table to verify whether the missing records had been created at all.

### Step 3: Check for duplicate or invalid records
Next, I checked whether the records existed but were duplicated, orphaned, or assigned inconsistent status values.

### Step 4: Compare tables using joins
I compared source and target tables using joins to see whether the records existed in one stage of processing but failed to appear in another.

### Step 5: Validate business status logic
Finally, I looked at status values and business flags that might explain why records were excluded from the user-facing result.

## Findings
The investigation suggested that the records did exist in the source layer, but they had not been updated correctly in the target layer because of a status-handling issue.

## Likely Root Cause
The most likely root cause was a data-handling or transformation problem in which status mapping was not applied correctly.

## Recommended Next Actions
1. escalate to the engineering or data team with evidence from the SQL investigation  
2. validate the status-mapping logic in the relevant process  
3. identify whether affected records can be reprocessed safely  
4. add monitoring or validation checks for future mismatches  
5. document the issue pattern in a support knowledge base  

## Example Escalation Summary
**Issue Summary:** Expected records were not visible in the application, but SQL investigation confirmed that they existed in the source table.  
**Likely Cause:** Status values were not updated correctly during downstream processing.  
**Impact:** Records did not appear in the expected user-facing output, affecting reporting and workflow continuity.  
**Requested Action:** Review status-mapping logic and confirm whether affected rows can be reprocessed.

## What This Case Demonstrates
This case demonstrates my ability to:
- use SQL to investigate data-related support issues  
- distinguish between absence of data and incorrect processing of data  
- structure troubleshooting around business hypotheses  
- communicate findings in a form suitable for escalation  

## Related Files
- `sql/case-01-find-missing-records.sql`
- `sql/case-01-find-duplicates.sql`
- `sql/case-01-status-validation.sql`
- `samples/case-01-issue-template.md`
- `samples/case-01-escalation-note.md`
