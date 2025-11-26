Feature: Calculate difference in Product class

  Scenario: Calculate the difference of products
    Given the first number is 5
    And the second number is 6
    And the third number is 2
    And the fourth number is 3
    When the difference is calculated
    Then the result should be 24


import br.masmangan.beecrowd.bee1007.Product;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import static org.junit.Assert.assertEquals;

public class ProductSteps {
    private Product product = new Product();
    private int actual;

    @Given("the first number is {int}")
    public void first_number_is(int a) {
        product.setA(a);
    }

    @Given("the second number is {int}")
    public void second_number_is(int b) {
        product.setB(b);
    }

    @Given("the third number is {int}")
    public void third_number_is(int c) {
        product.setC(c);
    }

    @Given("the fourth number is {int}")
    public void fourth_number_is(int d) {
        product.setD(d);
    }

    @When("the difference is calculated")
    public void different_is_calculated() {
        actual = product.getDifference();
    }

    @Then("the result should be {int}")
    public void the_result_should_be(int expected) {
        assertEquals(expected, actual);
    }
}
