Given /^I enter the name "([^\"]*)"$/ do |product_name|
  textbox = @main_window.find_TextBox "petNameInput"
  textbox.text = product_name
end

Given /^has price "([^\"]*)"$/ do |price|
  textbox = @main_window.find_TextBox "petPriceInput"
  textbox.text = price
end

Given /^is type of "([^\"]*)"$/ do |pet_type|
  combo = @main_window.find_ComboBox "petTypeInput"
  combo.select("PetType[#{pet_type}]")
end

Given /^eats "([^\"]*)"$/ do |food_type|
  combo = @main_window.find_ComboBox "petFoodInput"
  combo.select("PetFood[#{food_type}]")
end

When /^I save the product$/ do
  button = @main_window.find_Button "petSaveButton"
  button.click
  sleep(1)
end