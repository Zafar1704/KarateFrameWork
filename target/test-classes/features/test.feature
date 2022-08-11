# http://34.238.241.255:8000/api
  @123
Feature: Sample API Test

  Background:
  * url 'http://34.238.241.255:8000/api/spartans'
    * header Accept = 'application/json'

  Scenario: Test a sample GET API
    Given url 'http://34.238.241.255:8000/api/spartans'
    When method GET
    Then status 200

    @111
    Scenario: Test a sample from spartans API
      Given path '/2'
      When method GET
      Then status 200
