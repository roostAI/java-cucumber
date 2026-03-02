Feature: Student Grade Average Calculator
  As a student grade system
  I want to calculate weighted averages of three grades
  So that I can determine the final grade with proper weights

  Background:
    Given the student grade calculator is available

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
    Then the weighted average should be calculated as "(2.0*2 + 4.0*3 + 8.0*5) / 10"
    And the output should be "MEDIA = 5.6"

  Scenario: Handle high precision input values
    Given I have three grades to input
    When I input grade A as "7.123"
    And I input grade B as "8.456"
    And I input grade C as "9.789"
    And the program runs
    Then the output should display the result rounded to one decimal place
    And the output should be "MEDIA = 8.9"
