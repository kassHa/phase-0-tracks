1. What are some common HTTP status codes?
Every HTTP transaction has a status code sent back by the server to define how the server handled the transaction. Here is a list of the most common ones.
HTTP Status Code - 307 Temporary Redirect
HTTP Status Code - 400 Bad Request
HTTP Status Code - 401 Unauthorized
HTTP Status Code - 403 Forbidden
HTTP Status Code - 404 Not Found
HTTP Status Code - 410 Gone
HTTP Status Code - 500 Internal Server Error
HTTP Status Code - 501 Not Implemented
HTTP Status Code - 503 Service Unavailable
HTTP Status Code - 550 Permission Denied

2. What is the difference between a GET request and a POST request? When might each be used?
GET - Requests data from a specified resource.
GET is recommended when submitting "idempotent" forms. Forms that involve database queries only. Another perspective is that several idempotent queries will have the same effect as a single query. If database updates or other actions such as triggering emails are involved, the usage of POST is recommended.
POST - Submits data to be processed to a specified resource.

3. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Quite simply, a cookie is a small text file that is stored by a browser on the user’s machine. Cookies are plain text; they contain no executable code. A web page or server instructs a browser to store this information and then send it back with each subsequent request based on a set of rules. Web servers can then use this information to identify individual users. Most sites requiring a login will typically set a cookie once your credentials have been verified, and you are then free to navigate to all parts of the site so long as that cookie is present and validated. Once again, the cookie just contains data and isn’t harmful in and of itself.  The cookie value is stored in an HTTP header called Cookie and contains just the cookie value without any of the other options. Such as: Cookie: Value