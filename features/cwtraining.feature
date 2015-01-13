@orderonline
Feature: Order Dominos Pizza Online
We want to step through a simple scenario for training

@homepage
Scenario: Check the Dominos home page
  When I visit the Dominos home page
  Then I should see the Dominos home page

@address @pizzas @checkout
Scenario: Complete address, select store and
  Given I visit the Dominos home page
  When I click the Order Online tab
  Then I should see the Dominos Location Search page
  When I click the Delivery button
    And I select House from the Address Type select box
    And I enter 2554 W 119TH ST in the Street Address field
    And I enter CHICAGO in the City field
    And I select IL from the State select box
    And I enter 60655 in the Zip Code field
    And I click the Continue button
  Then I should see the Entrees page
  When I click Build Your Own pizza
    And I choose medium crunchy thin crust
    And I click next step
    And I choose hearty marinara sauce
    And I choose light sauce
    And I click next step
    And I click yes cheese it up
    And I select pepperoni
    And I select italian sausage
    And I select cheddar cheese
    And I select spinach
    And I click Add to Order
  Then I should see the Entrees page
  When I click Specialty Pizza
    And I choose Tuscan Salami & Roasted Veggie
    And I choose extra banana peppers
    And I click Add to Order
  Then I should see the specialty pizza page
  When I click the checkout button
  Then I should see the checkout page
    And I should see an order for a medium thin pizza
    And I should see a price for a medium thin pizza
    And I should see an order for a tuscan salami & roasted veggie pizza
    And I should see a price for a tuscan salami & roasted veggie pizza
    And I should see a food & beverage total
    And I should see a delivery charge
    And I should see the taxes
    And I should see the order total
