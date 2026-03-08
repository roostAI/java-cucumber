Feature: Calculator Sum Program
  As a user
  I want to input two integers
  So that I can get their sum displayed

  Scenario: Calculate sum of two positive integers
    Given I have two integers 10 and 9
    When the program runs
    Then the output should be "SOMA = 19"

  Scenario: Calculate sum of two negative integers
    Given I have two integers -5 and -3
    When the program runs
    Then the output should be "SOMA = -8"

  Scenario: Calculate sum with one positive and one negative integer
    Given I have two integers 15 and -7
    When the program runs
    Then the output should be "SOMA = 8"

  Scenario: Calculate sum with zero
    Given I have two integers 0 and 25
    When the program runs
    Then the output should be "SOMA = 25"

  Scenario: Calculate sum of two zeros
    Given I have two integers 0 and 0
    When the program runs
    Then the output should be "SOMA = 0"
