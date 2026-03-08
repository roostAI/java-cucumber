Feature: Calculator Operations
  As a user
  I want to perform basic arithmetic operations
  So that I can calculate sums and products of two numbers

  Background:
    Given I have a calculator

  Scenario: Calculate sum of two positive numbers
    Given the first number is 5
    And the second number is 3
    When the two numbers are added
    Then the result should be 8

  Scenario: Calculate sum of two negative numbers
    Given the first number is -4
    And the second number is -6
    When the two numbers are added
    Then the result should be -10

  Scenario: Calculate sum with zero
    Given the first number is 0
    And the second number is 7
    When the two numbers are added
    Then the result should be 7

  Scenario: Calculate product of two positive numbers
    Given the first number is 4
    And the second number is 5
    When the two numbers are multiplied
    Then the result should be 20

  Scenario: Calculate product with zero
    Given the first number is 0
    And the second number is 10
    When the two numbers are multiplied
    Then the result should be 0

  Scenario: Calculate product of negative numbers
    Given the first number is -3
    And the second number is -4
    When the two numbers are multiplied
    Then the result should be 12

  Scenario: Calculate product of positive and negative
    Given the first number is 6
    And the second number is -2
    When the two numbers are multiplied
    Then the result should be -12

  Scenario Outline: Multiple sum calculations
    Given the first number is <first>
    And the second number is <second>
    When the two numbers are added
    Then the result should be <sum>

    Examples:
      | first | second | sum |
      | 1     | 1      | 2   |
      | 10    | 20     | 30  |
      | -5    | 5      | 0   |
      | 100   | -50    | 50  |

  Scenario Outline: Multiple product calculations
    Given the first number is <first>
    And the second number is <second>
    When the two numbers are multiplied
    Then the result should be <product>

    Examples:
      | first | second | product |
      | 2     | 3      | 6       |
      | 7     | 8      | 56      |
      | -2    | 4      | -8      |
      | 0     | 999    | 0       |
