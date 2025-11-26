Feature: Main class functionality

  Scenario: Print Hello World using Greeter
    Given the application is started
    When the main method is executed
    Then the output should be "Hello World!"


import static org.junit.Assert.assertEquals;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class MainSteps {

    private ByteArrayOutputStream byteArrayOutputStream;
    private PrintStream originalOut;

    @Given("the application is started")
    public void the_application_is_started() {
        // Setup the output stream to capture the console output
        byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream outputStream = new PrintStream(byteArrayOutputStream);
        originalOut = System.out;
        System.setOut(outputStream);
    }

    @When("the main method is executed")
    public void the_main_method_is_executed() {
        // Execute the main method
        Main.main(null);
    }

    @Then("the output should be {string}")
    public void the_output_should_be(String expectedOutput) {
        // Verify the output
        String actualOutput = byteArrayOutputStream.toString().trim();
        assertEquals(expectedOutput, actualOutput);

        // Reset the System.out
        System.setOut(originalOut);
    }
}
