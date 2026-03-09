Feature: Circle Area Calculation
  As a developer
  I want to calculate the area of a circle
  So that I can perform geometric calculations

  Background:
    Given I have a Circle object

  Scenario: Calculate area with positive radius
    Given the radius is 5.0
    When I calculate the area
    Then the area should be 78.53975

  Scenario: Calculate area with decimal radius
    Given the radius is 2.5
    When I calculate the area
    Then the area should be 19.634375

  Scenario: Calculate area with radius of 1
    Given the radius is 1.0
    When I calculate the area
    Then the area should be 3.14159

  Scenario: Calculate area with zero radius
    Given the radius is 0.0
    When I calculate the area
    Then the area should be 0.0

  Scenario: Update radius and recalculate area
    Given the radius is 3.0
    When I calculate the area
    Then the area should be 28.27431
    When I change the radius to 4.0
    And I calculate the area
    Then the area should be 50.26544

  Scenario Outline: Calculate area for various radii
    Given the radius is <radius>
    When I calculate the area
    Then the area should be <expected_area>

    Examples:
      | radius | expected_area |
      | 1.0    | 3.14159      |
      | 2.0    | 12.56636     |
      | 3.0    | 28.27431     |
      | 5.0    | 78.53975     |
      | 10.0   | 314.159      |

  Scenario: Verify PI constant value
    Then the PI constant should be 3.14159
