# Case 4 Postman Request Example

## Request Name
Get Dashboard Data

## Method
GET

## URL
```http
https://api.example.com/v1/dashboard?userId=USER1001
Headers
{
  "Authorization": "Bearer {{access_token}}",
  "Accept": "application/json"
}
Expected Response
{
  "userId": "USER1001",
  "widgets": [
    {
      "name": "openTasks",
      "count": 12
    }
  ]
}
Example Failure
{
  "error": "Bad Gateway",
  "message": "Upstream service unavailable"
}
Interpretation
the page itself may not be broken 
the failure may sit in a dependent API or service 
support should distinguish UI symptom from backend dependency 
