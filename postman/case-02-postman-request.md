# Case 2 Postman Request Example

## Collection Name
Support API Troubleshooting

## Request Name
Get Customer Profile

## Method
GET

## URL
```http
https://api.example.com/v1/customer/profile?customerId=CUST1001
Headers
{
  "Authorization": "Bearer {{access_token}}",
  "Accept": "application/json"
}
Expected Successful Response
{
  "customerId": "CUST1001",
  "name": "Example Customer",
  "status": "ACTIVE"
}
Example Error Response
{
  "error": "Unauthorized",
  "message": "Invalid or expired token"
}
Interpretation
401 Unauthorized suggests an authentication issue 
if request fails in Postman as well as in app, issue is likely not just UI-related 
likely causes: expired token, missing token, invalid environment config 
