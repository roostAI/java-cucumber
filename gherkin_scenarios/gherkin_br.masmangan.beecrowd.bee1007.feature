Feature: Product Difference Calculator
  As a user
  I want to calculate the difference between two products
  So that I can perform mathematical operations on four numbers

  Background:
    Given I have a Product calculator

  Scenario: Calculate difference with positive numbers
    Given the first number is 5
    And the second number is 6
    And the third number is 7
    And the fourth number is 8
    When the difference is calculated
    Then the result should be -26

  Scenario: Calculate difference with mixed positive and negative numbers
    Given the first number is -3
    And the second number is 4
    And the third number is 2
    And the fourth number is -5
    When the difference is calculated
    Then the result should be -2

  Scenario: Calculate difference with zero values
    Given the first number is 0
    And the second number is 10
    And the third number is 5
    And the fourth number is 3
    When the difference is calculated
    Then the result should be -15

  Scenario: Calculate difference where first product is larger
    Given the first number is 10
    And the second number is 8
    And the third number is 4
    And the fourth number is 5
    When the difference is calculated
    Then the result should be 60

  Scenario: Calculate difference with all zeros
    Given the first number is 0
    And the second number is 0
    And the third number is 0
    And the fourth number is 0
    When the difference is calculated
    Then the result should be 0

  Scenario: Calculate difference with large numbers
    Given the first number is 1000
    And the second number is 2000
    And the third number is 500
    And the fourth number is 1500
    When the difference is calculated
    Then the result should be 1250000

  Scenario Outline: Calculate difference with various number combinations
    Given the first number is <a>
    And the second number is <b>
    And the third number is <c>
    And the fourth number is <d>
    When the difference is calculated
    Then the result should be <expected>

    Examples:
      | a  | b  | c  | d  | expected |
      | 1  | 2  | 3  | 4  | -10      |
      | 5  | 5  | 5  | 5  | 0        |
      | -1 | -2 | -3 | -4 | 14       |
      | 10 | 0  | 0  | 10 | 0        |
      | 7  | 8  | 2  | 3  | 50       |
