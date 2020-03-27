@platform

Feature:  Log In
    Test log in functions and validations.

Scenario: User is Tai Nguyen
    Given I go to website "https://console.liferay.coffee"
    When I enter in email "tai.nguyen@liferay.cloud"
    And I enter in password
    And I click "Log in"
    And I click user avatar
    Then I should see the user is "Tai Nguyen"