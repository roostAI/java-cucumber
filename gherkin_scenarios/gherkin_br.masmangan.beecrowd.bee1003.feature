Feature: Calculator Sum Functionality

  Scenario: Calculate the sum of two integers
    Given the calculator is initialized
    When I input the integers 10 and 9
    Then the output should be "SOMA = 19"


import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import static org.junit.Assert.assertEquals;
import java.io.*;

public class CalculatorSteps {
    private String input;
    private String actualOutput;

    @Given("the calculator is initialized")
    public void the_calculator_is_initialized() {
        // Initialization is handled in the main method, no action needed here
    }

    @When("I input the integers {int} and {int}")
    public void i_input_the_integers_and(int a, int b) throws IOException {
        input = a + "\n" + b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream outputStream = new PrintStream(byteArrayOutputStream);
        PrintStream previousOut = System.out;
        InputStream previousIn = System.in;
        
        System.setIn(new ByteArrayInputStream(input.getBytes()));
        System.setOut(outputStream);
        
        Main.main(null);
        
        actualOutput = byteArrayOutputStream.toString();
        
        System.setOut(previousOut);
        System.setIn(previousIn);
    }

    @Then("the output should be {string}")
    public void the_output_should_be(String expectedOutput) {
        assertEquals(expectedOutput + "\n", actualOutput);
    }
}
