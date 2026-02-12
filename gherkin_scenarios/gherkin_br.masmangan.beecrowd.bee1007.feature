Feature: Product Difference Calculator
  As a user
  I want to calculate the difference between two products
  So that I can get the result of (A * B) - (C * D)

  Scenario: Calculate difference with positive numbers
    Given I have four integers A=5, B=6, C=7, D=8
    When I run the program with input "5 6 7 8"
    Then the output should be "DIFERENCA = -26"

  Scenario: Calculate difference with mixed positive and negative numbers
    Given I have four integers A=0, B=0, C=7, D=8
    When I run the program with input "0 0 7 8"
    Then the output should be "DIFERENCA = -56"

  Scenario: Calculate difference resulting in positive value
    Given I have four integers A=10, B=9, C=2, D=3
    When I run the program with input "10 9 2 3"
    Then the output should be "DIFERENCA = 84"

  Scenario: Calculate difference with zero result
    Given I have four integers A=2, B=3, C=1, D=6
    When I run the program with input "2 3 1 6"
    Then the output should be "DIFERENCA = 0"

  Scenario: Calculate difference with large numbers
    Given I have four integers A=100, B=200, C=50, D=400
    When I run the program with input "100 200 50 400"
    Then the output should be "DIFERENCA = 0"
