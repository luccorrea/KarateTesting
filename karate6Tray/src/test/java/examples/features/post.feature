Feature: Testing post examples

Scenario: creat a new user

Given request {'name': "morpheus", 'job': "leader"}
And url 'https://reqres.in/api/users'
When method post
Then status 201

Scenario: register a new user

Given request {"email": "eve.holt@reqres.in", "password": "pistol"}
And url 'https://reqres.in/api/register'
When method post
Then status 200

Scenario: register unsuccessful 

Given request {"email": "sydney@fife"}
And url 'https://reqres.in/api/register'
When method post
Then status 400

Scenario: login 

Given request {"email": "eve.holt@reqres.in", "password": "cityslicka"}
And url 'https://reqres.in/api/login'
When method post
Then status 200

Scenario: login unsuccessful

Given request {"email": "peter@klaven"}
And url 'https://reqres.in/api/login'
When method post
Then status 400