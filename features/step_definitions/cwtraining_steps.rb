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
