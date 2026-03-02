Feature: Calculator Operations
  As a user
  I want to perform basic arithmetic operations
  So that I can calculate sums and products of two numbers

  Background:
    Given I have a calculator

  Scenario: Calculate sum of two positive numbers
    Given the first number is 10
    And the second number is 5
    When the two numbers are added
    Then the result should be 15

  Scenario: Calculate sum of two negative numbers
    Given the first number is -8
    And the second number is -3
    When the two numbers are added
    Then the result should be -11

  Scenario: Calculate sum with zero
    Given the first number is 0
    And the second number is 7
    When the two numbers are added
    Then the result should be 7

  Scenario: Calculate product of two positive numbers
    Given the first number is 6
    And the second number is 4
    When the two numbers are multiplied
    Then the result should be 24

  Scenario: Calculate product with zero
    Given the first number is 0
    And the second number is 9
    When the two numbers are multiplied
    Then the result should be 0

  Scenario: Calculate product of negative numbers
    Given the first number is -3
    And the second number is -5
    When the two numbers are multiplied
    Then the result should be 15

  Scenario: Calculate product of positive and negative number
    Given the first number is 7
    And the second number is -2
    When the two numbers are multiplied
    Then the result should be -14

  Scenario Outline: Multiple calculation scenarios
    Given the first number is <first>
    And the second number is <second>
    When the two numbers are <operation>
    Then the result should be <expected>

    Examples:
      | first | second | operation  | expected |
      | 1     | 1      | added      | 2        |
      | 5     | 3      | added      | 8        |
      | 2     | 4      | multiplied | 8        |
      | 10    | 0      | multiplied | 0        |
      | -1    | 5      | added      | 4        |
