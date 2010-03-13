Feature: Register new products for sale
   In Order to purchase items
   The manager
   Needs to be able to register new products

Background:    
  Given the application has started

Scenario: Saving a product 
   Given I enter the name "Product 1"
   When I click save
   Then "Product 1" should appear on the Select Purchases dropdown