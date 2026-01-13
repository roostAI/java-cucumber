Feature: Calculator Operations

  Scenario: Calculate the sum of two integers
    Given a Calculator
    When I set the first number to 10
    And I set the second number to 9
    Then the sum should be 19
