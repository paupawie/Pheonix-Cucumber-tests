Feature: Login Elements
  In order to login users must
  be able to see the elements

  Scenario: Username field exists
    Given I go to homepage
    Then I should see the username field

  Scenario: Password field exists
    Given I go to homepage
    Then I should see the password field
