@orderonline
Feature: Order Dominos Pizza Online
We want to step through a simple scenario for training

@homepage
Scenario: Check the Dominos home page
  When I visit the Dominos home page
  Then I should see the Dominos home page

@address
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
