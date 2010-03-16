Feature: Purchasing products
   In Order to purchase items
   The customer
   Needs to be able to select and purchase items

Background:    
  Given the application has started

Scenario: Selecting a product should add it to basket
   Given I enter the name "Product 1"
   And has price "5.00"
   When I save the product
   And I select to purchase "Product 1"
   Then the basket should contain "Product 1"
   And the total should be "5.00"

Scenario: Selecting a product should add it to basket
   Given the basket contains "Full Product"
   When I purchase
   Then the basket should be empty
