Feature: Using method post to the test

Scenario: creat a new user

Given request {"name": "morpheus", "job": "leader"}
And path "https://reqres.in/api/users"
When method post
Then status 201