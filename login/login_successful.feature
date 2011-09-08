Feature: Login
  In order to use the Beta App users must
  be able to login

  Scenario: Login to the beta app
    Given I go to homepage
    When I type "username@server.com" in username
    When I type "password" in password
    Then I should be able to login
