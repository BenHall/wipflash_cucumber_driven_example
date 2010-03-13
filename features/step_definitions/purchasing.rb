Then /^"([^\"]*)" should appear on the Select Purchases dropdown$/ do |product_name|
  combo = @main_window.Find_ComboBox "basketInput"
  combo.Items.should include("Pet[#{product_name}]")
end