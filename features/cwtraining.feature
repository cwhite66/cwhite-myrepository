Feature: Order Dominos Pizza Online
We want to step through a simple scenario for training

Scenario: Check the Dominos home page
  When I visit the Dominos home page
  Then I should see the Dominos home page

Scenario: Location Search for Dominos Pizza
  Given I visit the Dominos home page
  When I click the "Order Online" tab
  Then I should see the Dominos Location Search page
