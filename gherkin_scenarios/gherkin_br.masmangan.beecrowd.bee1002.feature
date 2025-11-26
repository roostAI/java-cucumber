Feature: Calculate the area of a circle

  Scenario: Calculate area with a given radius
    Given the program is running
    When I input the radius "2.00"
    Then the output should be "A=12.5664"

  Scenario: Calculate area with another radius
    Given the program is running
    When I input the radius "100.64"
    Then the output should be "A=31819.3103"

  Scenario: Calculate area with a small radius
    Given the program is running
    When I input the radius "150.00"
    Then the output should be "A=70685.7750"


import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import static org.junit.Assert.assertEquals;
import java.io.*;

public class CircleAreaSteps {

    private String input;
    private String actualOutput;

    @Given("the program is running")
    public void the_program_is_running() {
        // Setup is done in the @When step
    }

    @When("I input the radius {string}")
    public void i_input_the_radius(String radius) throws IOException {
        input = radius + "\n";
        InputStream inputStream = new ByteArrayInputStream(input.getBytes());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream outputStream = new PrintStream(byteArrayOutputStream);
        PrintStream previousOut = System.out;
        InputStream previousIn = System.in;
        System.setIn(inputStream);
        System.setOut(outputStream);
        Main.main(null);
        actualOutput = byteArrayOutputStream.toString().trim();
        inputStream.close();
        outputStream.close();
        System.setOut(previousOut);
        System.setIn(previousIn);
    }

    @Then("the output should be {string}")
    public void the_output_should_be(String expectedOutput) {
        assertEquals(expectedOutput, actualOutput);
    }
}
