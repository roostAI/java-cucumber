Feature: Calculator Sum Program
  As a user
  I want to input two integers
  So that I can get their sum displayed

  Background:
    Given I have a calculator program

  Scenario: Calculate sum of two positive integers
    Given I provide input "10 9"
    When the program runs
    Then the output should be "SOMA = 19"

  Scenario: Calculate sum of two negative integers
    Given I provide input "-5 -3"
    When the program runs
    Then the output should be "SOMA = -8"

  Scenario: Calculate sum of positive and negative integers
    Given I provide input "15 -7"
    When the program runs
    Then the output should be "SOMA = 8"

  Scenario: Calculate sum with zero
    Given I provide input "0 25"
    When the program runs
    Then the output should be "SOMA = 25"

  Scenario: Calculate sum of two zeros
    Given I provide input "0 0"
    When the program runs
    Then the output should be "SOMA = 0"

  Scenario: Calculate sum of large integers
    Given I provide input "1000 2000"
    When the program runs
    Then the output should be "SOMA = 3000"
