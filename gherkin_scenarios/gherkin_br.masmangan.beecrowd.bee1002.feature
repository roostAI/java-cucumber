Feature: Circle Area Calculation
  As a user
  I want to calculate the area of a circle
  So that I can determine the space enclosed by the circle

  Background:
    Given I have a Circle object

  Scenario: Calculate area with positive radius
    Given the radius is 2.0
    When the area is calculated
    Then the area should be 12.56636

  Scenario: Calculate area with zero radius
    Given the radius is 0.0
    When the area is calculated
    Then the area should be 0.0

  Scenario: Calculate area with decimal radius
    Given the radius is 1.5
    When the area is calculated
    Then the area should be 7.0685775

  Scenario: Calculate area with large radius
    Given the radius is 10.0
    When the area is calculated
    Then the area should be 314.159

  Scenario: Calculate area with small decimal radius
    Given the radius is 0.5
    When the area is calculated
    Then the area should be 0.7853975

  Scenario Outline: Calculate area for various radii
    Given the radius is <radius>
    When the area is calculated
    Then the area should be <expected_area>

    Examples:
      | radius | expected_area |
      | 1.0    | 3.14159      |
      | 3.0    | 28.27431     |
      | 5.0    | 78.53975     |
      | 7.0    | 153.93791    |

  Scenario: Verify PI constant value
    Then the PI constant should be 3.14159

  Scenario: Update radius multiple times
    Given the radius is 1.0
    When the area is calculated
    Then the area should be 3.14159
    When the radius is 2.0
    And the area is calculated
    Then the area should be 12.56636
