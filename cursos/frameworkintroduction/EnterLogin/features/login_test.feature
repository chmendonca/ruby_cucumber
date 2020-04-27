Feature: Test if user entered the email
  Scenario: User didn't fill the email
    Given I am on Guru99 page first attempt
    When I don't enter the email to register
    Then error message will be shown
  Scenario: User fill the email
    Given I am on Guru99 page second attempt
    When I enter the email to register
    Then login details will be shown