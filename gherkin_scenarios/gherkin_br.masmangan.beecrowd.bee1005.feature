Feature: Calculate Student Grade Average

  Scenario: Calculate average grade for a student
    Given the first grade is 7.0
    And the second grade is 8.0
    When the average is calculated
    Then the average should be 7.7272727272727275

  Scenario: Calculate average grade with zero grades
    Given the first grade is 0.0
    And the second grade is 0.0
    When the average is calculated
    Then the average should be 0.0

  Scenario: Calculate average grade with maximum grades
    Given the first grade is 10.0
    And the second grade is 10.0
    When the average is calculated
    Then the average should be 10.0


import static org.junit.Assert.assertEquals;

public class StudentGradeSteps {

    private StudentGrade equation;
    private double actual;

    @Given("the first grade is {double}")
    public void first_grade_is(Double a) {
        equation = new StudentGrade();
        equation.setA(a);
    }

    @Given("the second grade is {double}")
    public void second_grade_is(Double b) {
        equation.setB(b);
    }

    @When("the average is calculated")
    public void average_is_calculated() {
        actual = equation.getAverage();
    }

    @Then("the average should be {double}")
    public void the_average_should_be(Double expected) {
        assertEquals(expected, actual, 0.000000000000001);
    }
}
