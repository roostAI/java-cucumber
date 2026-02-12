Feature: Student Grade Weighted Average Calculator
  As a teacher
  I want to calculate a student's weighted average grade
  So that I can properly evaluate their performance with different weight assignments

  Background:
    Given I have a student grade calculator

  Scenario: Calculate weighted average with standard grades
    Given the first grade is 8.0
    And the second grade is 9.0
    And the third grade is 7.0
    When the weighted average is calculated
    Then the result should be 7.8

  Scenario: Calculate weighted average with perfect scores
    Given the first grade is 10.0
    And the second grade is 10.0
    And the third grade is 10.0
    When the weighted average is calculated
    Then the result should be 10.0

  Scenario: Calculate weighted average with minimum scores
    Given the first grade is 0.0
    And the second grade is 0.0
    And the third grade is 0.0
    When the weighted average is calculated
    Then the result should be 0.0

  Scenario: Calculate weighted average with mixed grades
    Given the first grade is 6.5
    And the second grade is 8.2
    And the third grade is 9.1
    When the weighted average is calculated
    Then the result should be 8.19

  Scenario Outline: Calculate weighted average for various grade combinations
    Given the first grade is <grade_a>
    And the second grade is <grade_b>
    And the third grade is <grade_c>
    When the weighted average is calculated
    Then the result should be <expected_average>

    Examples:
      | grade_a | grade_b | grade_c | expected_average |
      | 5.0     | 6.0     | 7.0     | 6.1              |
      | 7.5     | 8.5     | 9.5     | 8.65             |
      | 3.2     | 4.8     | 6.4     | 5.0              |
      | 9.8     | 9.2     | 8.6     | 9.12             |

  Scenario: Verify weighted calculation formula
    Given the first grade is 2.0 with weight 2
    And the second grade is 3.0 with weight 3
    And the third grade is 5.0 with weight 5
    When the weighted average is calculated using formula (a*2 + b*3 + c*5)/10
    Then the result should be 3.8
