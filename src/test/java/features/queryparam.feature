#/**
#     Given accept type is json
#     And query param nameContains value is "e"
#     And query param gender value is "Female"
#     When I send get request to /spartans/search
#     Then status code is 200
#     And content type is Json
#     And json response data is as expected
#     */

  Feature: Spartan test with query Param

    Background:
      * url 'http://34.238.241.255:8000/api/spartans'
      * header Accept = 'application/json'

      Scenario: Test with query Param
        Given path '/search'
        And param nameContains = 'e'
        And param gender = 'Female'
        When method GET
        Then status 200
        And print response
