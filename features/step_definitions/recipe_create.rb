Given("I am on the homepage") do
  visit root_path
end

When("I click on the {string} link") do |page_name|
  click_link page_name
end

Then("I should be on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end

Then("I should see the {string} field") do |field_name|
  expect(page).to have_field(field_name)
end
Given("I am on the {string} page") do |string|
  visit (string)
end
Then("I enter my {string}") do |string|
  puts string
end

When("I press {string}") do |string|
  click_button(string)
end
Then("it should destroy a recipe") do
  expect { click_link 'Destroy' }.to change(recipe, :count).by(-1)
end
When("I dump the response") do
  puts body
end
Given("the following recipe exists") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |hash|
    @guide
  end
end

Then("I should not see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end