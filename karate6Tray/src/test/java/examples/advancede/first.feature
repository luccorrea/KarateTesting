Feature: testing a set of post and get

 Background:
    * url baseUrl = 'https://reqres.in/api/users'

* def first = response[0]
* def id = response.id
* print 'created id is: ' + id

Scenario: criar e recuperar novo usuario

Given request {'email': "eve.holt@reqres.in", 'password': "pistol"}
And url 'https://reqres.in/api/register'
When method post
Then status 200
And match response == {"id": "#notnull", "token": "#notnull"}

Scenario: geting one of the users

Given url baseUrl + '/' + response.id
When method get
Then status 200

