Feature: String extensions
  Scenario: colorizing
    Given I have a string "abc a b"
    When I highlight it
    Then I should receive "[1mabc a b[0m"
    When I highlight "a"
    Then I should receive "abc [1ma[0m b"
    When I highlight "abc"
    Then I should receive "[1mabc[0m a b"
    When I highlight it with :red
    Then I should receive "[31;1mabc a b[0m"
    When I highlight "abc" with :red
    Then I should receive "[31;1mabc[0m a b"
