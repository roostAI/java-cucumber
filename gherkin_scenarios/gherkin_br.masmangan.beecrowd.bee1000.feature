Feature: Greeter

  Scenario: Say Hello
    Given a Greeter instance
    When the greeting is done
    Then the result should be "Hello World!"


import static org.junit.Assert.assertEquals;

import br.masmangan.beecrowd.bee1000.Greeter;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class GreeterSteps {

    private Greeter g;
    private String actual;

    @Given("a Greeter instance")
    public void a_greeter_instance() {
        g = new Greeter();
    }

    @When("the greeting is done")
    public void greeting_is_done() {
        actual = g.sayHello();
    }

    @Then("the result should be {string}")
    public void the_result_should_be(String expected) {
        assertEquals(expected, actual);
    }
}
