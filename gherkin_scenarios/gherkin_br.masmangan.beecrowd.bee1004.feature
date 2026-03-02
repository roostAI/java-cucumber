Feature: Product Calculator
  As a user
  I want to calculate the product of two integers
  So that I can get the multiplication result

  Background:
    Given I have a Calculator instance

  Scenario: Calculate product of two positive integers
    Given I set the first number to 10
    And I set the second number to 9
    When I calculate the product
    Then the result should be 90

  Scenario: Calculate product of positive and negative integers
    Given I set the first number to 5
    And I set the second number to -3
    When I calculate the product
    Then the result should be -15

  Scenario: Calculate product with zero
    Given I set the first number to 0
    And I set the second number to 25
    When I calculate the product
    Then the result should be 0

  Scenario: Calculate product of two negative integers
    Given I set the first number to -4
    And I set the second number to -7
    When I calculate the product
    Then the result should be 28

  Scenario: Main program execution with input
    Given I provide input "3\n4"
    When the program runs
    Then the output should be "PROD = 12\n"

  Scenario: Main program execution with larger numbers
    Given I provide input "15\n8"
    When the program runs
    Then the output should be "PROD = 120\n"

  Scenario: Main program execution with negative numbers
    Given I provide input "-6\n7"
    When the program runs
    Then the output should be "PROD = -42\n"

  Scenario: Main program execution with zero input
    Given I provide input "0\n100"
    When the program runs
    Then the output should be "PROD = 0\n"
