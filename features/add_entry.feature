Feature: Add a new recipe
  
  As a user
  So that I can easily add recipes to the page
  I want to be able to add a new recipe entry
  
Scenario: As a blogger I want to be able to navigate from the homepage to the new recipe form
  Given I am on the homepage
  When I click on the "New Recipe" link
  Then I should be on the "New Recipe" page
  And I should see the "Name" field
  And I should see the "Author" field
  
  Scenario: Adding steps after I have created the recipe
  Given I am on the homepage
  When I click on the "Recipe List" link
  Then I should be on the "Recipe List" page
  When I click on the "Edit" link
  Then I should be on the "Edit Recipe" page
  And I should see the "Tasks" field