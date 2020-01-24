Feature: Testing delete examples

Scenario: deleteng a user

Given url 'https://reqres.in/api/users/2'
When method delete
Then status 204