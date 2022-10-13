
Feature: Test for User

    Scenario: create user
        * def user =
        """ 
            {
            "id": 100,
            "username": "PCV",
            "firstName": "Paulo",
            "lastName": "Caris",
            "email": "paulo.carisv@gmail.com",
            "password": "Prueba_01",
            "phone": "999999999",
            "userStatus": 0
            }
            """
        Given url 'https://petstore.swagger.io/v2/user'
        And request user
        When method post
        Then status 200

    Scenario: request user
        Given path "PCV"
        Given url 'https://petstore.swagger.io/v2/user/'
        When method get
        Then status 200
    
