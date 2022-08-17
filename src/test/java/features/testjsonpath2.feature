#/**
#http://54.211.225.58:8000/api
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

Feature: Jsonpath

  @jsonpath1
  Scenario: Jsonpath with HR
    Given url 'http://54.211.225.58:1000/ords/hr'
    And path '/countries'
    When method GET
    Then print response
    Then def ids = $.items[0]
    And def ids2 = $..country_id
    And print ids
    And print ids2
    And def data2 = $.items[?(@.manager_id==100)]

    #Then def data = $.items[0]
    #Then def data2 = $.items[?(@.manager_id==100)]


      ## Get subjects array
      #And def subjects = $..subjects
      ## From subjects array get all names
      #And def subject_name = karate.jsonPath(subjects,"$..['name']")
      #And print subject_name




