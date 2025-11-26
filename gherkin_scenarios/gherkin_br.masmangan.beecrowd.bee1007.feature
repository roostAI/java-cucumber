Feature: Calculate Difference in Product

  Scenario: Calculate the difference of products from four integers
    Given the input values are "5", "6", "7", "8"
    When the program runs
    Then the output should be "DIFERENCA = -26\n"

  Scenario: Calculate the difference of products from another set of integers
    Given the input values are "0", "0", "7", "8"
    When the program runs
    Then the output should be "DIFERENCA = 0\n"

  Scenario: Calculate the difference of products with all zero inputs
    Given the input values are "0", "0", "0", "0"
    When the program runs
    Then the output should be "DIFERENCA = 0\n"

  Scenario: Calculate the difference of products with negative numbers
    Given the input values are "-5", "-6", "-7", "-8"
    When the program runs
    Then the output should be "DIFERENCA = -26\n"
