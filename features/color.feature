Feature: String extensions
  Scenario: colorizing
    Given I have a string "abc"
    When I highlight it
    Then I should receive "[1mabc[0m"
