Feature: Student Grade Average Calculator (Bee1005)
  As a student grade system
  I want to calculate weighted average of two grades
  So that I can determine the final grade with proper weights

  Background:
    Given I have a student grade calculator
    And the first grade has weight 3.5
    And the second grade has weight 7.5
    And the total weight is 11.0

  Scenario: Calculate average with typical grades
    Given I input the first grade as "5.0"
    And I input the second grade as "7.1"
    When the program runs
    Then the output should be "MEDIA = 6.43182"

  Scenario: Calculate average with perfect grades
    Given I input the first grade as "10.0"
    And I input the second grade as "10.0"
    When the program runs
    Then the output should be "MEDIA = 10.00000"

  Scenario: Calculate average with zero grades
    Given I input the first grade as "0.0"
    And I input the second grade as "0.0"
    When the program runs
    Then the output should be "MEDIA = 0.00000"

  Scenario: Calculate average with decimal precision
    Given I input the first grade as "8.5"
    And I input the second grade as "9.2"
    When the program runs
    Then the output should be "MEDIA = 8.95455"

  Scenario: Calculate average with minimum and maximum values
    Given I input the first grade as "1.0"
    And I input the second grade as "9.0"
    When the program runs
    Then the output should be "MEDIA = 6.45455"
