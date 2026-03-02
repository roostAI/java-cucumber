Feature: Circle Area Calculator
  As a user
  I want to calculate the area of a circle
  So that I can determine the area given a radius

  Background:
    Given I have a circle area calculator program

  Scenario: Calculate area with positive radius
    Given I provide the radius "2.0"
    When the program runs
    Then the output should be "A=12.5664"

  Scenario: Calculate area with decimal radius
    Given I provide the radius "1.5"
    When the program runs
    Then the output should be "A=7.0686"

  Scenario: Calculate area with small radius
    Given I provide the radius "0.5"
    When the program runs
    Then the output should be "A=0.7854"

  Scenario: Calculate area with large radius
    Given I provide the radius "10.0"
    When the program runs
    Then the output should be "A=314.1590"

  Scenario: Calculate area with zero radius
    Given I provide the radius "0.0"
    When the program runs
    Then the output should be "A=0.0000"

  Scenario: Calculate area with integer radius
    Given I provide the radius "3"
    When the program runs
    Then the output should be "A=28.2743"

  Scenario: Calculate area with high precision radius
    Given I provide the radius "1.234567"
    When the program runs
    Then the output should be "A=4.7914"
