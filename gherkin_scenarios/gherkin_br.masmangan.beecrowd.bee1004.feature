Feature: Calculator Product Calculation

  Scenario: Calculate the product of two integers
    Given the calculator is initialized
    When I set the first integer to 10
    And I set the second integer to 9
    Then the product should be 90

  Scenario: Calculate the product of two different integers
    Given the calculator is initialized
    When I set the first integer to 5
    And I set the second integer to 4
    Then the product should be 20


import static org.junit.Assert.assertEquals;

import br.masmangan.beecrowd.bee1001.Calculator;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class CalculatorSteps {

    private Calculator calculator;
    private int result;

    @Given("the calculator is initialized")
    public void the_calculator_is_initialized() {
        calculator = new Calculator();
    }

    @When("I set the first integer to {int}")
    public void i_set_the_first_integer_to(int a) {
        calculator.setA(a);
    }

    @When("I set the second integer to {int}")
    public void i_set_the_second_integer_to(int b) {
        calculator.setB(b);
    }

    @Then("the product should be {int}")
    public void the_product_should_be(int expectedProduct) {
        result = calculator.getProduct();
        assertEquals(expectedProduct, result);
    }
}
