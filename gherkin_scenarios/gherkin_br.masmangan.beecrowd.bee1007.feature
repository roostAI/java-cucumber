Feature: Calculate the difference of products in the Product class

  Scenario: Calculate the difference of products given four integers
    Given the first number is 5
    And the second number is 6
    And the third number is 2
    And the fourth number is 3
    When the difference is calculated
    Then the result should be 24

  Scenario: Calculate the difference of products with zero values
    Given the first number is 0
    And the second number is 0
    And the third number is 0
    And the fourth number is 0
    When the difference is calculated
    Then the result should be 0

  Scenario: Calculate the difference of products with negative values
    Given the first number is -3
    And the second number is 4
    And the third number is 2
    And the fourth number is -5
    When the difference is calculated
    Then the result should be 14

  Scenario: Calculate the difference of products with mixed positive and negative values
    Given the first number is 7
    And the second number is -8
    And the third number is -9
    And the fourth number is 10
    When the difference is calculated
    Then the result should be -26
