Feature: Register new products for sale
   In Order to purchase items
   The manager
   Needs to be able to register new products

Background:    
  Given the application has started

Scenario: Saving a product by name only
   Given I enter the name "Product 1"
   When I click save
   Then "Product 1" should appear on the Select Purchases dropdown

Scenario: Saving a product with full details
   Given I enter the name "Product 2"
   And is type of "Dog"
   And eats "Carnivorous"
   And has price "5.00"
   When I click save
   Then "Product 2" should appear on the Select Purchases dropdown