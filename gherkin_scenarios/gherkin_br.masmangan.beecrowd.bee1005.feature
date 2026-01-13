Feature: Calculate the weighted average of student grades

  Scenario: Calculate average with given grades
    Given the first grade is 5.0
    And the second grade is 7.0
    When the average is calculated
    Then the result should be 6.636363636363637

  Scenario: Calculate average with different grades
    Given the first grade is 8.0
    And the second grade is 9.0
    When the average is calculated
    Then the result should be 8.681818181818182

  Scenario: Calculate average with zero grades
    Given the first grade is 0.0
    And the second grade is 0.0
    When the average is calculated
    Then the result should be 0.0
