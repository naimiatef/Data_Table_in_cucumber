Feature: Test The login functionality
  Scenario: To login with valid email and valid password 
   Given User open the website and go to login page
   When User fill email as username and password and click on login 
   | gunjankaushik | Password@123 |
   Then User should navigate to home page
