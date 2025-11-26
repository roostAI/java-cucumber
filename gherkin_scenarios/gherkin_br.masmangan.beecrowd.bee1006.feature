Feature: Calculate Student Grade Average

  Scenario: Calculate average grade for a student
    Given the first grade is 7.0
    And the second grade is 8.0
    And the third grade is 9.0
    When the average is calculated
    Then the average should be 8.3

  Scenario: Calculate average grade with different weights
    Given the first grade is 5.0
    And the second grade is 6.0
    And the third grade is 7.0
    When the average is calculated
    Then the average should be 6.3

  Scenario: Calculate average grade with zero values
    Given the first grade is 0.0
    And the second grade is 0.0
    And the third grade is 0.0
    When the average is calculated
    Then the average should be 0.0
