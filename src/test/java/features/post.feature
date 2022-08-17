Feature: post

  #/**
  #     given accept is json and content type is json
  #     and body is:
  #     {
  #     "gender": "Male",
  #     "name": "TestPost1"
  #     "phone": 1234567425
  #     }
  #     When I send POST request to /spartans
  #     Then status code is 201
  #     And content type is json
  #     And "success" is "A Spartan is Born!"
  #     Data name, gender , phone matches my request details
  #     */


  Scenario: Post 1
    Given header Accept = 'application/json'
    And url 'http://34.238.241.255:8000/api/spartans'
    And def postbody = { "gender": "Male","name": "TestPost1","phone": 1234567425}
    And request postbody
    When method POST
    Then status 201
    Then match header content-type contains 'application/json'
    Then match $.success == "A Spartan is Born!"
    Then match $.data.name == 'TestPost1'
    Then match $.data.gender == 'Male'
    Then match $.data.phone == 1234567425
    Then def id = response.data.id
    Then print id
    Then path '/',id
    Then method GET
    Then print response
    Then path '/',id
    Then method DELETE
    Then status 204
    Then method GET
    Then print response
    Then def var123 = $.[?(@.id==161)]
  Then print var123


 # $.items[?(@.manager_id==100)]







