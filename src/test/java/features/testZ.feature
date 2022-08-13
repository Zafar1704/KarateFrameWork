#/**
# * Given accept is json
# * And path param id is 13
# * When I send get request to /api/spartans/{id}
# * ----------
# * Then status code is 200
# * And content type is json
# * And id value is 13
# * And name is "Jaimie"
# * And gender is "Female"
# * And phone is "7842554879"
# */

  Feature: Json path test

    Background:
      * url 'http://34.238.241.255:8000/api/spartans'
      * header Accept = 'application/json'

      Scenario: Json Path test 1
        Given path '/13'
        When method GET
        Then status 200
        And match header content-type contains 'application/json'
        And match response.id == 13
        And match response.name == 'Jaimie'
        And match response.gender == 'Female'
        And match response.phone == 7842554879

        Scenario: JSon path with HR
          Given url 'http://54.211.225.58:1000/ords/hr'
          And header Accept = 'application/json'
          And path '/employees'
          And param limit = 200
          When method GET
          Then status 200
          Then match header content-type contains 'application/json'
          Then def data = $.items[0]
          Then def data2 = $.item[?(@.manager_id==100)]
          Then print data2
          Then print data
