Feature: Testing patch examples

Scenario: updating a user

Given request {'name': "morpheus"}
And url 'https://reqres.in/api/users/2'
When method patch
Then status 200