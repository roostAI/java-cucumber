Feature: Simple Addition Calculator
  As a user
  I want to input two integers
  So that I can get their sum displayed

  Background:
    Given I have a calculator program

  Scenario: Calculate sum of two positive integers
    Given I provide input "5" and "3"
    When the program runs
    Then the output should be "SOMA = 8"

  Scenario: Calculate sum of two negative integers
    Given I provide input "-2" and "-7"
    When the program runs
    Then the output should be "SOMA = -9"

  Scenario: Calculate sum of positive and negative integers
    Given I provide input "10" and "-4"
    When the program runs
    Then the output should be "SOMA = 6"

  Scenario: Calculate sum with zero
    Given I provide input "0" and "15"
    When the program runs
    Then the output should be "SOMA = 15"

  Scenario: Calculate sum of large numbers
    Given I provide input "1000" and "2000"
    When the program runs
    Then the output should be "SOMA = 3000"
