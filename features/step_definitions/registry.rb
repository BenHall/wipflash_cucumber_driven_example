Given /^I enter the name "([^\"]*)"$/ do |product_name|
  textbox = @main_window.find_TextBox "petNameInput"
  #textbox = @main_window.method(:find).of(TextBox).call("petNameInput")
  textbox.text = product_name
end

When /^I click save$/ do
  button = @main_window.find_Button "petSaveButton"
  button.click
  sleep(1)
end

