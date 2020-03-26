@platform
@ie11
Feature:  Log In
    Test log in functions and validations.

Background:
    Given I go to test environment console.liferay.coffee

Scenario: User is Tai Nguyen
    When I go to "console.liferay.coffee"
    Then I enter in email "Email"
    Then I enter in password "Password"
    Then I click "Log in"
    Then I click user icon
    Then I should see the user name "Tai Nguyen"