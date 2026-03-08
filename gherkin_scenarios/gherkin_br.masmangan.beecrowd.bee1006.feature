Feature: Student Grade Average Calculator
  As a student
  I want to calculate my weighted average grade
  So that I can know my final score based on three assessments

  Background:
    Given the grade calculator system is available

  Scenario: Calculate weighted average with typical grades
    Given I have three grades to input
    When I input grade A as "5.0"
    And I input grade B as "6.0" 
    And I input grade C as "7.0"
    And the program runs
    Then the output should display "MEDIA = 6.3"

  Scenario: Calculate weighted average with perfect scores
    Given I have three grades to input
    When I input grade A as "10.0"
    And I input grade B as "10.0"
    And I input grade C as "10.0"
    And the program runs
    Then the output should display "MEDIA = 10.0"

  Scenario: Calculate weighted average with minimum scores
    Given I have three grades to input
    When I input grade A as "0.0"
    And I input grade B as "0.0"
    And I input grade C as "0.0"
    And the program runs
    Then the output should display "MEDIA = 0.0"

  Scenario: Calculate weighted average with decimal precision
    Given I have three grades to input
    When I input grade A as "7.5"
    And I input grade B as "8.2"
    And I input grade C as "9.1"
    And the program runs
    Then the output should display "MEDIA = 8.4"

  Scenario: Verify weighted calculation formula
    Given I have three grades to input
    When I input grade A as "2.0"
    And I input grade B as "4.0"
    And I input grade C as "8.0"
    And the program runs
    Then the weighted average should be calculated as "(2.0*2 + 4.0*3 + 8.0*5) / 10"
    And the output should display "MEDIA = 5.6"

  Scenario Outline: Test various grade combinations
    Given I have three grades to input
    When I input grade A as "<gradeA>"
    And I input grade B as "<gradeB>"
    And I input grade C as "<gradeC>"
    And the program runs
    Then the output should display "MEDIA = <expected>"

    Examples:
      | gradeA | gradeB | gradeC | expected |
      | 1.0    | 2.0    | 3.0    | 2.3      |
      | 6.5    | 7.0    | 8.5    | 7.4      |
      | 9.0    | 8.5    | 7.0    | 7.8      |
      | 3.5    | 5.5    | 6.0    | 5.3      |
