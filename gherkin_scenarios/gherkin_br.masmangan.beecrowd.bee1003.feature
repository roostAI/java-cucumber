Feature: Calculator Operations

  Scenario: Calculate the sum of two integers
    Given a Calculator
    When I set the first number to 10
    And I set the second number to 9
    Then the sum should be 19

  Scenario: Calculate the sum of two different integers
    Given a Calculator
    When I set the first number to 5
    And I set the second number to 15
    Then the sum should be 20


import static org.junit.Assert.assertEquals;

import br.masmangan.beecrowd.bee1001.Calculator;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class CalculatorSteps {

    private Calculator calculator;
    private int result;

    @Given("a Calculator")
    public void a_calculator() {
        calculator = new Calculator();
    }

    @When("I set the first number to {int}")
    public void i_set_the_first_number_to(int number) {
        calculator.setA(number);
    }

    @When("I set the second number to {int}")
    public void i_set_the_second_number_to(int number) {
        calculator.setB(number);
    }

    @Then("the sum should be {int}")
    public void the_sum_should_be(int expectedSum) {
        result = calculator.getSum();
        assertEquals(expectedSum, result);
    }
}
