Feature: Circle Area Calculation
  As a developer
  I want to calculate the area of a circle
  So that I can perform geometric calculations accurately

  Background:
    Given a new circle is created

  Scenario: Calculate area with positive radius
    Given the radius is 5.0
    When the area is calculated
    Then the area should be 78.53975

  Scenario: Calculate area with unit radius
    Given the radius is 1.0
    When the area is calculated
    Then the area should be 3.14159

  Scenario: Calculate area with decimal radius
    Given the radius is 2.5
    When the area is calculated
    Then the area should be 19.6349375

  Scenario: Calculate area with zero radius
    Given the radius is 0.0
    When the area is calculated
    Then the area should be 0.0

  Scenario: Calculate area with large radius
    Given the radius is 10.0
    When the area is calculated
    Then the area should be 314.159

  Scenario Outline: Calculate area for various radii
    Given the radius is <radius>
    When the area is calculated
    Then the area should be <expected_area>

    Examples:
      | radius | expected_area |
      | 1.0    | 3.14159      |
      | 2.0    | 12.56636     |
      | 3.0    | 28.27431     |
      | 4.0    | 50.26544     |
      | 0.5    | 0.7853975    |

  Scenario: Verify PI constant value
    Then the PI constant should be 3.14159

  Scenario: Update radius and recalculate area
    Given the radius is 3.0
    When the area is calculated
    Then the area should be 28.27431
    When the radius is changed to 6.0
    And the area is calculated
    Then the area should be 113.09724
