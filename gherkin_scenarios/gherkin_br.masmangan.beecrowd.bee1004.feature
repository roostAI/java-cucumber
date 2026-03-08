Feature: Product Calculator
  As a user
  I want to calculate the product of two integers
  So that I can get the multiplication result

  Background:
    Given I have a calculator application

  Scenario: Calculate product of two positive integers
    Given I input the first number as 10
    And I input the second number as 9
    When the program runs
    Then the output should be "PROD = 90"

  Scenario: Calculate product of two negative integers
    Given I input the first number as -5
    And I input the second number as -3
    When the program runs
    Then the output should be "PROD = 15"

  Scenario: Calculate product with zero
    Given I input the first number as 7
    And I input the second number as 0
    When the program runs
    Then the output should be "PROD = 0"

  Scenario: Calculate product of positive and negative integers
    Given I input the first number as 8
    And I input the second number as -4
    When the program runs
    Then the output should be "PROD = -32"

  Scenario: Calculate product of large numbers
    Given I input the first number as 1000
    And I input the second number as 500
    When the program runs
    Then the output should be "PROD = 500000"
