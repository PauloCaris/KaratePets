
Feature: Test for pets
  
    Scenario: request pets sold
        Given param status = "sold"
        Given url 'https://petstore.swagger.io/v2/pet/findByStatus'
        When method get
        Then status 200
        * def myResult = response
        * def fun = (arg) => { karate.log("mi id es: "+arg.category.id)}
        * def fun2 = function(x){ return  x.category.id + " : " + x.category.name }

        * karate.forEach(myResult,fun)
    


        
