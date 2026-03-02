Feature: Hello World Program
  As a user
  I want to run the Main program
  So that I can see a greeting message

  Scenario: Program displays Hello World message
    When the program runs
    Then the output should be "Hello World!"

  Scenario: Greeter says hello correctly
    Given a Greeter instance is created
    When sayHello method is called
    Then it should return "Hello World!"
