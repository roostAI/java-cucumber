Feature: Calculator Product Calculation

  Scenario: Calculate the product of two integers
    Given a Calculator
    When I set the first number to 5
    And I set the second number to 3
    Then the product should be 15


import br.masmangan.beecrowd.bee1001.Calculator;
import static org.junit.Assert.assertEquals;

public class CalculatorSteps {

    private Calculator calculator;
    private int product;

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

    @Then("the product should be {int}")
    public void the_product_should_be(int expectedProduct) {
        product = calculator.getProduct();
        assertEquals(expectedProduct, product);
    }
}
