Given /^the basket contains "([^\"]*)"$/ do |product_name|
  Given 'I enter the name "' + product_name + '"'
  Given 'has price "5.00"'
  When 'I save the product'
end

When /^I select to purchase "([^\"]*)"$/ do |product_name|
  combo = @main_window.find_ComboBox "basketInput"
  combo.select("Pet[#{product_name}]")
end

When /^I purchase$/ do
  button = @main_window.find_Button "purchaseButton"
  button.click
end

Then /^"([^\"]*)" should be available to purchase$/ do |product_name|
  combo = @main_window.find_ComboBox "basketInput"
  combo.Items.should include("Pet[#{product_name}]")
end

Then /^the total should be "([^\"]*)"$/ do |total|
  label = @main_window.find_Label "totalOutput"
  label.Text.should == total
end