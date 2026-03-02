Feature: Student Grade Average Calculator
  As a teacher
  I want to calculate the weighted average of two student grades
  So that I can determine the final grade with proper weighting

  Background:
    Given the grade calculation system is available

  Scenario: Calculate weighted average with typical grades
    Given I have two grades to input
    When I input grade A as 5.0
    And I input grade B as 7.1
    Then the program should display "MEDIA = 6.43182"

  Scenario: Calculate weighted average with perfect scores
    Given I have two grades to input
    When I input grade A as 10.0
    And I input grade B as 10.0
    Then the program should display "MEDIA = 10.00000"

  Scenario: Calculate weighted average with minimum scores
    Given I have two grades to input
    When I input grade A as 0.0
    And I input grade B as 0.0
    Then the program should display "MEDIA = 0.00000"

  Scenario: Calculate weighted average with decimal precision
    Given I have two grades to input
    When I input grade A as 8.5
    And I input grade B as 9.2
    Then the program should display "MEDIA = 8.95455"

  Scenario: Calculate weighted average with different grade values
    Given I have two grades to input
    When I input grade A as 3.2
    And I input grade B as 6.8
    Then the program should display "MEDIA = 5.75455"
