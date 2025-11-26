Feature: Calculator Operations

  Scenario: Add two numbers
    Given the first number is 5
    And the second number is 10
    When the two numbers are added
    Then the result should be 15

  Scenario: Multiply two numbers
    Given the first number is 3
    And the second number is 4
    When the two numbers are multiplied
    Then the result should be 12
