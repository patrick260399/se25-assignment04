Feature: Points of Sale Management
  This feature allows users to create and modify points of sale (POS).

  Scenario: Insert and retrieve two POS
    Given an empty POS list
    When I insert POS with the following elements
      | name                   | description             | type             | campus | street          | houseNumber | postalCode | city     |
      | Lidl (Nürnberger Str.) | Vending machine at Lidl | VENDING_MACHINE  | ZAPF   | Nürnberger Str. | 3a          | 95448      | Bayreuth |
      | New Cafe               | Fancy new cafe          | CAFE             | MAIN   | Teststraße      | 99          | 12345      | New City |
    Then the POS list should contain the same elements in the same order

  Scenario: Update one of three existing POS
    Given the following POS exist:
      | name    | description       |
      | POS1    | Description one   |
      | POS2    | Description two   |
      | POS3    | Description three |
    When I update the description of POS2 to "Updated description"
    Then the description of POS2 should be "Updated description"

