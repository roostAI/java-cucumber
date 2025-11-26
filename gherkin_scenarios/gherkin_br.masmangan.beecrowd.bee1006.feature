Feature: Calculate Student Grade Average

  Scenario: Calculate average grade for a student
    Given the first grade is 8.0
    And the second grade is 7.5
    And the third grade is 9.0
    When the average is calculated
    Then the average should be 8.3


public class StudentGradeSteps {

    private StudentGrade equation;
    private double actual;

    @Given("the first grade is {double}")
    public void first_number_is(Double a) {
        equation = new StudentGrade();
        equation.setA(a);
    }

    @Given("the second grade is {double}")
    public void second_number_is(Double b) {
        equation.setB(b);
    }

    @Given("the third grade is {double}")
    public void third_number_is(Double c) {
        equation.setC(c);
    }

    @When("the average is calculated")
    public void average_is_calculated() {
        actual = equation.getAverage();
    }

    @Then("the average should be {double}")
    public void the_average_should_be(Double expected) {
        assertEquals(expected, actual, 0.01);
    }
}
