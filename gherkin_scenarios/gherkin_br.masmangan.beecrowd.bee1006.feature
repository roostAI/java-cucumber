Feature: Student Grade Calculator
  As a teacher
  I want to calculate weighted average of student grades
  So that I can determine the final grade with proper weight distribution

  Background:
    Given the grade calculator system is ready

  Scenario: Calculate weighted average with standard grades
    Given I have three grades to input
    When I input grade A as "5.0"
    And I input grade B as "6.0" 
    And I input grade C as "7.0"
    And the program runs
    Then the output should be "MEDIA = 6.3"

  Scenario: Calculate weighted average with perfect scores
    Given I have three grades to input
    When I input grade A as "10.0"
    And I input grade B as "10.0"
    And I input grade C as "10.0"
    And the program runs
    Then the output should be "MEDIA = 10.0"

  Scenario: Calculate weighted average with minimum scores
    Given I have three grades to input
    When I input grade A as "0.0"
    And I input grade B as "0.0"
    And I input grade C as "0.0"
    And the program runs
    Then the output should be "MEDIA = 0.0"

  Scenario: Calculate weighted average with decimal precision
    Given I have three grades to input
    When I input grade A as "5.5"
    And I input grade B as "6.7"
    And I input grade C as "8.2"
    And the program runs
    Then the output should be "MEDIA = 7.1"

  Scenario: Verify weighted calculation formula
    Given I have three grades to input
    When I input grade A as "2.0"
    And I input grade B as "4.0"
    And I input grade C as "8.0"
    And the program runs
    Then the output should be "MEDIA = 6.0"
    And the calculation should follow the formula "(A*2 + B*3 + C*5) / 10"
