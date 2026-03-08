Feature: Student Grade Average Calculator
  As a student grade system
  I want to calculate weighted average of two grades
  So that I can determine the final grade with proper weighting

  Background:
    Given the grade calculator is ready

  Scenario: Calculate weighted average with typical grades
    Given I have grade A as 5.0
    And I have grade B as 7.1
    When I calculate the weighted average
    Then the result should be "MEDIA = 6.43182"

  Scenario: Calculate weighted average with perfect grades
    Given I have grade A as 10.0
    And I have grade B as 10.0
    When I calculate the weighted average
    Then the result should be "MEDIA = 10.00000"

  Scenario: Calculate weighted average with zero grades
    Given I have grade A as 0.0
    And I have grade B as 0.0
    When I calculate the weighted average
    Then the result should be "MEDIA = 0.00000"

  Scenario: Calculate weighted average with decimal grades
    Given I have grade A as 8.5
    And I have grade B as 9.2
    When I calculate the weighted average
    Then the result should be "MEDIA = 8.95455"

  Scenario: Calculate weighted average with minimum and maximum grades
    Given I have grade A as 0.0
    And I have grade B as 10.0
    When I calculate the weighted average
    Then the result should be "MEDIA = 6.81818"
