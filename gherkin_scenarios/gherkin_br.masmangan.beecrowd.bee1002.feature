Feature: Circle Area Calculation

  Scenario: Calculate the area of a circle with a given radius
    Given a circle
    When the radius is set to 5.0
    And the area is calculated
    Then the area should be 78.53975

  Scenario: Calculate the area of a circle with a different radius
    Given a circle
    When the radius is set to 10.0
    And the area is calculated
    Then the area should be 314.159

  Scenario: Calculate the area of a circle with zero radius
    Given a circle
    When the radius is set to 0.0
    And the area is calculated
    Then the area should be 0.0


import static org.junit.Assert.assertEquals;

import br.masmangan.beecrowd.bee1002.Circle;
import io.cucumber.java.en.*;

public class CircleSteps {

    private Circle c;
    private double actual;

    @Given("a circle")
    public void a_circle() {
        c = new Circle();
    }

    @When("the radius is set to {double}")
    public void radius_is(double radius) {
        c.setRadius(radius);
    }

    @When("the area is calculated")
    public void area_is_calculated() {
        actual = c.getArea();
    }

    @Then("the area should be {double}")
    public void the_area_should_be(double expected) {
        assertEquals(expected, actual, 0.00001);
    }
}
