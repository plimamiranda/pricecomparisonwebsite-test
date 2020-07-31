  Given("the user is on home page") do
    home_page.go_to_homepage
  end
  
  Given("the user is on register account form") do
    home_page.go_to_new_account_form_box
  end
  
  When("the user fill the registration form without the email address field") do
    email = ""
    password = 123456
    home_page.fill_account_form(email, password)
  end
  
  When("the user submit the registration form") do
   home_page.submit_account_form
  end
  
  Then(/^(.+) message is displayed$/) do |error_message|
    home_page.assert_email_address error_message
  end
  
#   Given("the user is on register account form") do
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   When("the user fill the registration form with simpleaddress as email address") do
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   When("the user fill the registration form with %ˆ&$%ˆ&.com as email address") do
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   When("the user fill the registration form without the password field") do
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  
#   When("the user fill the registration form with {int} field") do |int|
#     pending # Write code here that turns the phrase above into concrete actions
#   end
  