Feature: Product Difference Calculator
  As a user
  I want to calculate the difference between two products
  So that I can get the result of (A * B) - (C * D)

  Scenario: Calculate difference with positive integers
    Given I have four integers A=5, B=6, C=7, D=8
    When I run the program
    Then the output should be "DIFERENCA = -26"

  Scenario: Calculate difference with mixed positive and negative integers
    Given I have four integers A=0, B=0, C=0, D=0
    When I run the program
    Then the output should be "DIFERENCA = 0"

  Scenario: Calculate difference resulting in positive value
    Given I have four integers A=10, B=10, C=5, D=5
    When I run the program
    Then the output should be "DIFERENCA = 75"

  Scenario: Calculate difference with large numbers
    Given I have four integers A=100, B=200, C=50, D=300
    When I run the program
    Then the output should be "DIFERENCA = 5000"

  Scenario: Calculate difference with one zero value
    Given I have four integers A=8, B=0, C=3, D=4
    When I run the program
    Then the output should be "DIFERENCA = -12"
