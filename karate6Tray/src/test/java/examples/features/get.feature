Feature: testing get examples

Scenario: geting tha page off last acess

Given url 'https://reqres.in/api/users?page=2'
When method get
Then status 200

Scenario: geting one of the users

Given url 'https://reqres.in/api/users/2'
When method get
Then status 200