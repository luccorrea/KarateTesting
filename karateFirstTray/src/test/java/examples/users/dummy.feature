Feature: Dummy webapp

Scenario: fetch dummy url

Given url 'http://dummy.restapiexample.com/api/v1/employees'
When method get
Then status 200 