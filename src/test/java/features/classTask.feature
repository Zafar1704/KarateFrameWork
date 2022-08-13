Feature: Class tasks

  Background:
    * url 'http://34.238.241.255:8000/api'
    * header Accept = 'application/json'


    Scenario Outline:  task1
      Given path '/spartans/<id>'
      When method GET
      Then status 200
      And match header content-type contains 'application/json'
      And print response
      And match response.id == 24
      And match response.name == 'Julio'
      And match response.gender == 'Male'
      And match response.phone == 9393139934
      Examples:
        | id |
        | 24 |

