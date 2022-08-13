Feature: Task3

  #/**
  #     *      Given accept type is json
  #     *      And query param nameContains value is "e"
  #     *      And query param gender value is "Female"
  #     *      When I send get request to /spartans/search
  #     *      Then status code is 200
  #     *      And content type is Json
  #     *      And json response data is as expected
  #     *         totalElement is 34
  #     *         has ids: 94, 98,91, 81
  #     *         has names: Jocelin, Georgianne, Catie, Marylee,Elita
  #     *         every gender is Female
  #     *         every name contains e
  #     */

  Background:
    * url 'http://34.238.241.255:8000/api/spartans'
    * header Accept = 'application/json'

    Scenario: Task3
      Given path '/search'
      And param nameContains = 'e'
      And param gender = 'Female'
      When method GET
      Then status 200
      And match header content-type contains 'application/json'
      And print response
      And response.totalElement == 34
      And def id = $..id
      And match id contains [94, 98,91, 81]
      And def name = $..name
      And match name contains ['Jocelin', 'Georgianne', 'Catie', 'Marylee','Elita']
      And match karate.lowerCase(name) contains 'e'

