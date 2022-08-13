Feature: Class Task 2

  #/*
  #     * given accept type is json
  #     * when I send get request to /countries
  #     * Then status code is 200
  #     * and content type is json
  #     * and count should be 25
  #     * and country ids should contain "AR,AU,BE,BR,CA"
  #     * and country names should have "Argentina,Australia,Belgium,Brazil,Canada"
  #     * items[0].country_id ==> AR
  #     * items[1].country_id ==> AU
  #     * items.country_id ==> AR, AU, .... all of them as a list of string
  #     */
  Background:
    * url 'http://34.238.241.255:1000/ords/hr'
    * header Accept = 'application/json'

  Scenario: ORDS task from class
    Given path '/countries'
    When method GET
    Then status 200
    And match header content-type contains 'application/json'
    And assert response.count == 25
    And def id = $..country_id
    And match id contains ['AR','AU','BE','BR','CA']
    And def name = karate.jsonPath(response, "$..country_name")
    And match name contains ['Argentina','Australia','Belgium','Brazil','Canada']
    And match response.items[0].country_id == 'AR'
    And match response.items[1].country_id == 'AU'

# And def name = karate.jsonPath(response, "$..country_name")




