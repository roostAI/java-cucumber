Feature: Greeter functionality
  As a user
  I want to get a greeting message
  So that I can receive a friendly hello

  Scenario: Get hello message
    Given I have a Greeter instance
    When I call the sayHello method
    Then I should receive "Hello World!" message

  Scenario: Verify greeting consistency
    Given I have a Greeter instance
    When I call sayHello multiple times
    Then I should always get the same greeting message

  Scenario: Verify greeting is not null or empty
    Given I have a Greeter instance
    When I call the sayHello method
    Then the greeting should not be null
    And the greeting should not be empty
