Feature: Calculator Operations

  Scenario: Adding two numbers
    Given the first number is 5
    And the second number is 10
    When the two numbers are added
    Then the result should be 15

  Scenario: Multiplying two numbers
    Given the first number is 4
    And the second number is 3
    When the two numbers are multiplied
    Then the result should be 12


import static org.junit.Assert.assertEquals;

import br.masmangan.beecrowd.bee1001.Calculator;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class CalculatorSteps {

    private Calculator calc;
    private int actual;

    @Given("the first number is {int}")
    public void givenTheFirstNumberIs(int a) {
        calc = new Calculator();
        calc.setA(a);
    }

    @Given("the second number is {int}")
    public void givenTheSecondNumberIs(int b) {
        calc.setB(b);
    }

    @When("the two numbers are added")
    public void whenTheTwoNumbersAreAdded() {
        actual = calc.getSum();
    }

    @When("the two numbers are multiplied")
    public void whenTheTwoNumbersAreMultiplied() {
        actual = calc.getProduct();
    }

    @Then("the result should be {int}")
    public void thenTheResultShouldBe(int expected) {
        assertEquals(expected, actual);
    }
}
