Feature: Calculator Operations
  As a user
  I want to perform basic mathematical operations
  So that I can calculate sums and products of two numbers

  Background:
    Given I have a calculator

  Scenario: Adding two positive numbers
    Given the first number is 10
    And the second number is 5
    When the two numbers are added
    Then the result should be 15

  Scenario: Adding two negative numbers
    Given the first number is -8
    And the second number is -3
    When the two numbers are added
    Then the result should be -11

  Scenario: Adding positive and negative numbers
    Given the first number is 15
    And the second number is -7
    When the two numbers are added
    Then the result should be 8

  Scenario: Adding zero values
    Given the first number is 0
    And the second number is 0
    When the two numbers are added
    Then the result should be 0

  Scenario: Multiplying two positive numbers
    Given the first number is 6
    And the second number is 4
    When the two numbers are multiplied
    Then the result should be 24

  Scenario: Multiplying positive and negative numbers
    Given the first number is 7
    And the second number is -3
    When the two numbers are multiplied
    Then the result should be -21

  Scenario: Multiplying by zero
    Given the first number is 15
    And the second number is 0
    When the two numbers are multiplied
    Then the result should be 0

  Scenario Outline: Calculator operations with different values
    Given the first number is <first>
    And the second number is <second>
    When the operation <operation> is performed
    Then the result should be <expected>

    Examples:
      | first | second | operation | expected |
      | 12    | 8      | addition  | 20       |
      | 9     | 3      | addition  | 12       |
      | 5     | 7      | multiply  | 35       |
      | -4    | 6      | multiply  | -24      |
