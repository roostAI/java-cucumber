Feature: Student Grade Calculation
  As a teacher
  I want to calculate weighted averages of student grades
  So that I can properly evaluate student performance

  Background:
    Given I have a student grade calculator

  Scenario: Calculate weighted average with positive grades
    Given the first grade is 8.0
    And the second grade is 9.0
    When the average is calculated
    Then the result should be 8.636363636363637

  Scenario: Calculate weighted average with zero grades
    Given the first grade is 0.0
    And the second grade is 0.0
    When the average is calculated
    Then the result should be 0.0

  Scenario: Calculate weighted average with maximum grades
    Given the first grade is 10.0
    And the second grade is 10.0
    When the average is calculated
    Then the result should be 10.0

  Scenario: Calculate weighted average with different grade values
    Given the first grade is 5.5
    And the second grade is 7.8
    When the average is calculated
    Then the result should be 7.068181818181818

  Scenario: Calculate weighted average with decimal precision
    Given the first grade is 6.75
    And the second grade is 8.25
    When the average is calculated
    Then the result should be 7.840909090909091

  Scenario Outline: Calculate weighted average for various grade combinations
    Given the first grade is <first_grade>
    And the second grade is <second_grade>
    When the average is calculated
    Then the result should be <expected_average>

    Examples:
      | first_grade | second_grade | expected_average    |
      | 1.0         | 2.0          | 1.6818181818181819  |
      | 3.5         | 4.5          | 4.159090909090909   |
      | 7.2         | 8.8          | 8.290909090909092   |
      | 9.9         | 9.1          | 9.354545454545455   |

  Scenario: Verify grade setting functionality
    Given the first grade is 6.0
    And the second grade is 8.0
    When I update the first grade to 7.0
    And the average is calculated
    Then the result should be 7.636363636363637
