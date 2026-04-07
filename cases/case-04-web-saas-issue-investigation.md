# Case 4: Web/SaaS Issue Investigation Using Browser Tools

> Note: This case study is a portfolio-style reconstruction created for professional demonstration purposes. It is designed to reflect realistic support scenarios without disclosing any confidential or proprietary information.

## Scenario
A user reported that a page in a SaaS application failed to load correctly. The visible symptom was that the page either displayed incomplete content or did not show the expected information needed for a routine task.

## Business Impact
The immediate impact was that users could not complete a routine process in the application. This caused:
- disruption to normal workflow  
- user frustration and support dependency  
- risk of repeated tickets if the issue affected multiple users  
- pressure to determine whether the problem required workaround or escalation  

## Initial Hypotheses
1. front-end rendering problem  
2. failed network request  
3. expired session or authentication issue  
4. browser cache or stale state issue  
5. dependent API or backend failure  

## Investigation Approach

### Step 1: Reproduce the issue
I confirmed whether the page issue could be reproduced consistently.

### Step 2: Open DevTools
I used browser developer tools to inspect:
- Console
- Network
- Elements, where relevant

### Step 3: Check Console errors
Console messages can quickly reveal front-end or session-related issues.

### Step 4: Check Network activity
I checked failed requests, response status, and request timing.

### Step 5: Distinguish front-end symptom from backend dependency
I determined whether the UI was broken or whether it was behaving correctly because a dependency failed.

## Findings
The investigation suggested that the visible page problem was associated with a failed network request.

## Likely Root Cause
The likely root cause was a dependent request failure affecting the page’s ability to render expected content.

## Recommended Next Actions
1. verify whether the failed request is environment-specific  
2. confirm session/authentication behavior  
3. test the same action in another browser or clean session  
4. capture evidence from Network/Console for escalation  
5. escalate to engineering or platform support if the dependent request continues to fail  

## Example Escalation Summary
**Issue Summary:** User reported page failed to load expected content in SaaS application.  
**Investigation:** Browser DevTools showed dependent network request failure associated with missing page data.  
**Likely Cause:** API/backend dependency or session-related failure affecting content rendering.  
**Requested Action:** Review failed request path and validate dependent service behavior.

## What This Case Demonstrates
This case demonstrates my ability to:
- use browser tools in a support context  
- distinguish visible UI issues from request/dependency failures  
- structure SaaS issue investigation clearly  
- prepare technical evidence suitable for escalation  

## Related Files
- `sql/case-04-session-log-check.sql`
- `postman/case-04-postman-request.md`
- `samples/case-04-issue-template.md`
- `samples/case-04-escalation-note.md`
