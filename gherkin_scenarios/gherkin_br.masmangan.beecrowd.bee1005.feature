Feature: Calculate Weighted Average of Student Grades

  Scenario: Calculate the weighted average of two grades
    Given the student has a grade A of 5.0
    And the student has a grade B of 7.0
    When the program calculates the average
    Then the output should be "MEDIA = 6.81818"
