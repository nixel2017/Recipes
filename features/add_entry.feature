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
  And I should see the "Difficulty" field
  And I should see the "Ingredients" field
  
  Scenario: Adding steps after I have created the recipe
  Given I am on the homepage
  When I click on the "New Recipe" link
  Then I should be on the "New Recipe" page
  And I enter my "Name"
  And I enter my "Author"
  And I enter my "Difficulty"
  And I enter my "Ingredients"
  When I press "Save Guide"
  Then I should be on the "Recipe" page
  And I enter my "Step"
  
  Scenario: Destroy a recipe
    Given I am on the homepage
    And I click on the "Recipe List" link
    Then I should be on the "Recipe List" page
    Given the following recipe exists
    | Recipe Name    | Author | Difficulty |
    | Cookies        | Gabby  | Not very   | 
    And I dump the response
    And I click on the "Destroy" link
    Then I should not see "Cookies"