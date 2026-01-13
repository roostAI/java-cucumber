Feature: Calculate Sum of Two Integers

  Scenario: User inputs two integers and gets their sum
    Given the user inputs "10" and "9"
    When the program runs
    Then the output should be "X = 19"


import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.charset.StandardCharsets;
import static org.junit.Assert.assertEquals;

public class CalculatorSteps {

    private String input;
    private String actual;

    @Given("the user inputs {string} and {string}")
    public void the_user_inputs_and(String firstNumber, String secondNumber) {
        input = firstNumber + "\n" + secondNumber;
    }

    @When("the program runs")
    public void the_program_runs() throws Exception {
        InputStream inputStream = new ByteArrayInputStream(input.getBytes(StandardCharsets.UTF_8));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream outputStream = new PrintStream(byteArrayOutputStream);
        PrintStream previousOut = System.out;
        InputStream previousIn = System.in;
        System.setIn(inputStream);
        System.setOut(outputStream);
        Main.main(null);
        actual = byteArrayOutputStream.toString();
        inputStream.close();
        outputStream.close();
        System.setOut(previousOut);
        System.setIn(previousIn);
    }

    @Then("the output should be {string}")
    public void the_output_should_be(String expected) {
        assertEquals(expected + "\n", actual);
    }
}
