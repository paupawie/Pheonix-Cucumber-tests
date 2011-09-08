Feature: Login
  In order to use the Beta App users must
  be able to login

  Scenario: Login is unsuccessful because password is missing
    Given I go to homepage
    When I type "username@server.com" in username
    Then I should not be able to login

  Scenario: Login is unsuccessful because username is missing
    Given I go to homepage
    When I type "password" in password
    Then I should not be able to login

  Scenario: Login is unsuccessful because username and password is missing
    Given I go to homepage
    Then I should not be able to login

  Scenario: Login is unsuccessful because of wrong password
    Given I go to homepage
    When I type "false_password" in password
    Then I should not be able to login
