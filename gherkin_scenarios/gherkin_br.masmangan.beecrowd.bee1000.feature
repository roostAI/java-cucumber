Feature: Greeter

  Scenario: Say Hello
    Given a Greeter
    When the greeting is done
    Then the result should be "Hello World!"
