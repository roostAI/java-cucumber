Feature: Calculator Product Calculation

  Scenario: Calculate the product of two integers
    Given the calculator is initialized
    When I set the first number to 3
    And I set the second number to 4
    And I calculate the product
    Then the result should be 12

  Scenario Outline: Calculate the product of various integer pairs
    Given the calculator is initialized
    When I set the first number to <firstNumber>
    And I set the second number to <secondNumber>
    And I calculate the product
    Then the result should be <product>

    Examples:
      | firstNumber | secondNumber | product |
      | 5           | 6            | 30      |
      | 7           | 8            | 56      |
      | 0           | 10           | 0       |
      | -3          | 9            | -27     |
      | -4          | -5           | 20      |
