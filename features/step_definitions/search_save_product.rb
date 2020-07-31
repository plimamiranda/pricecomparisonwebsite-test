
Given("the webbrowser is on home page") do
  home_page.go_to_homepage
end

Given("the user is logged in") do
  @username = "fakeemail@email.fake"
  password = "somepassword"
  home_page.perform_login(@username, password)
end

When(/^the user search for a (.+)$/) do |product_name|
  home_page.fill_search_and_press_enter_with product_name
end

When("the list of products are dysplayed") do
  preisvergleich_page.has_list_of_products?
end

When("the user choose and click to send one product to Merkzettel") do
  preisvergleich_page.find_and_select_one_product
  preisvergleich_page.add_product_to_favorites
end

Then("the product should be included in his Merkzettel") do
  product_description = preisvergleich_page.get_product_description_from_title
  preisvergleich_page.go_to_mekzettel
  preisvergleich_page.check_product_in_merkzettel product_description
end

When(/^the user create an Alert for a wished (\d+)$/) do |price|
  preisvergleich_page.find_and_select_one_product
  preisvergleich_page.create_alert_price_with price
end

Then("a email will be sended to confirm the action") do
  preisvergleich_page.confirm_email_message
end



