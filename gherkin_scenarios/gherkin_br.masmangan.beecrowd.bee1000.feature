Feature: Greeter functionality
  As a user
  I want to get a greeting message
  So that I can display a welcome message

  Scenario: Get hello world greeting
    Given a greeter instance exists
    When I request a greeting
    Then I should receive "Hello World!" message

  Scenario: Greeting message is consistent
    Given a greeter instance exists
    When I request a greeting multiple times
    Then I should always receive the same "Hello World!" message

  Scenario: Greeting method returns non-null value
    Given a greeter instance exists
    When I request a greeting
    Then the greeting should not be null
    And the greeting should be a valid string
