Feature: Hello World Program
  As a user
  I want to run the main program
  So that I can see a greeting message

  Scenario: Program displays Hello World message
    Given the program is ready to run
    When the program runs
    Then the output should be "Hello World!"

  Scenario: Greeter says hello correctly
    Given a Greeter instance is created
    When I call the sayHello method
    Then it should return "Hello World!"
