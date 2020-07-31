Given("The user is on Product Category Page") do
    home_page.go_to_homepage
    productcategory_page.go_to_productcategory_page
end

When("the user select a price range") do
   productcategory_page.select_price_range
end

Then("only product within the price range select will be displayed") do
  productcategory_page.confirm_price_range 
end

When("the user choose how the offerlist should be ordenate") do
  productcategory_page.select_order_of_offerList
end

Then("the offerlist should be ordenate as selected") do
  puts ""

end