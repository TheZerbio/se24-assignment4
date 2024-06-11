Feature: InsertIntoListAcceptanceTests
  This feature inserts elements into a list sorted by value.

  Scenario: Insert two elements in the wrong order into an empty list
    Given an empty list
    When I insert an element with value 0.4
    And I insert an element with value 0.2
    Then the list should contain 2 elements
    And the list should contain the elements in the following order:
    | 0.2 |
    | 0.4 |

  Scenario: Insert one element between two elements in a list
    Given a list with elements:
      | 0.2 |
      | 0.4 |
    When I insert an element with value 0.3
    Then the list should contain 3 elements
    And the list should contain the elements in the following order:
      | 0.2 |
      | 0.3 |
      | 0.4 |

  Scenario: Insert one element after two elements in a list
    Given a list with elements:
      | 0.2 |
      | 0.4 |
    When I insert an element with value 0.5
    Then the list should contain 3 elements
    And the list should contain the elements in the following order:
      | 0.2 |
      | 0.4 |
      | 0.5 |
