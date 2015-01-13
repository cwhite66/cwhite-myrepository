# home page
When(/^I visit the Dominos home page$/) do
    visit('https://order.dominos.com/')
end

Then(/^I should see the Dominos home page$/) do
    expect(page).to have_selector(:id, 'homePage')
end

# start order online process and complete address form
When(/^I click the Order Online tab$/) do
  click_link('Order Online')
end

Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_selector(:id, 'locationsSearchPage')
end

When(/^I click the Delivery button$/) do
  find('.Delivery').click
end

When(/^I select House from the Address Type select box$/) do
  select('House',:from => 'Address_Type_Select')
end

When(/^I enter 2554 W 119TH ST in the Street Address field$/) do
  fill_in('Street', :with => '2554 W 119TH ST')
end

When(/^I enter CHICAGO in the City field$/) do
  fill_in('City', :with => 'CHICAGO')
end

When(/^I select IL from the State select box$/) do
  select('IL', :from => 'Region')
end

When(/^I enter 60655 in the Zip Code field$/) do
  fill_in('Postal_Code', :with => '60655')
end

When(/^I click the Continue button$/) do
  click_button('Continue')
end

Then(/^I should see the Entrees page$/) do
  expect(page).to have_selector(:id, 'entreesPage')
end

# order first pizza
When(/^I click Build Your Own pizza$/) do
  find(:xpath, '//a[@data-wt-panelname=\'byopizza\']').click
end

When(/^I choose medium crunchy thin crust$/) do
  find(:xpath, '//input[@value=\'12THIN\']').click
end

When(/^I click next step$/) do
  click_link('Next Step ►')
end

When(/^I choose hearty marinara sauce$/) do
  choose('S_PIZZA|Topping|Xm')
end

When(/^I choose light sauce$/) do
  select('Light', :from => 'Weight|Xm')
end

When(/^I click yes cheese it up$/) do
  click_button('Yes, cheese it up!')
end

When(/^I select pepperoni$/) do
  check('S_PIZZA|Topping|P')
end

When(/^I select italian sausage$/) do
  check('S_PIZZA|Topping|S')
end

When(/^I select cheddar cheese$/) do
  check('S_PIZZA|Topping|E')
end

When(/^I select spinach$/) do
  check('S_PIZZA|Topping|Si')
end

When(/^I click Add to Order$/) do
  click_button('Add to Order')
end

# order second pizza
When(/^I click Specialty Pizza$/) do
  find(:xpath, '//a[@data-wt-panelname=\'specialtypizza\']').click
end

When(/^I choose Tuscan Salami & Roasted Veggie$/) do
  find(:xpath, '//a[@href=\'#/product/S_PIZSV/builder/\' and @data-clicked-element=\'button\']').click
end

When(/^I choose extra banana peppers$/) do
  find(:xpath, '//input[@value=\'1/1|1.5\' and @name=\'S_PIZSV|Topping|Z\']').click
end

Then(/^I should see the specialty pizza page$/) do
    expect(page).to have_selector(:id,'categoryPage2')
end
