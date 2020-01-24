Feature: Testing put examples

Scenario: updating a user

Given request {'name': "morpheus", 'job': "zion resident"}
And url 'https://reqres.in/api/users/2'
When method put
Then status 200