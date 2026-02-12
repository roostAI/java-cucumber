Feature: Product Calculator
  As a user
  I want to calculate the product of two integers
  So that I can get the multiplication result

  Background:
    Given I have a calculator application

  Scenario: Calculate product of two positive integers
    Given I input the first number as 3
    And I input the second number as 9
    When the program runs
    Then the output should be "PROD = 27"

  Scenario: Calculate product of positive and negative integers
    Given I input the first number as 5
    And I input the second number as -4
    When the program runs
    Then the output should be "PROD = -20"

  Scenario: Calculate product with zero
    Given I input the first number as 0
    And I input the second number as 15
    When the program runs
    Then the output should be "PROD = 0"

  Scenario: Calculate product of two negative integers
    Given I input the first number as -7
    And I input the second number as -8
    When the program runs
    Then the output should be "PROD = 56"

  Scenario: Calculate product of large numbers
    Given I input the first number as 999
    And I input the second number as 1000
    When the program runs
    Then the output should be "PROD = 999000"
