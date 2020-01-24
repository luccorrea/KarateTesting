Feature: Mirror webapp

Scenario: fetch mirror url

Given url 'https://mirror.attinadsoftware.com'
When method get
Then status 200