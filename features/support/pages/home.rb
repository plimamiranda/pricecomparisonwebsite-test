module Pages
  class HomePage
    include RSpec::Matchers
    include Capybara::DSL 
    
    def fill_search_and_press_enter_with(product_name)
      search_box.set(product_name).send_keys(:enter)
    end
    
    def search_box
      find("#i-search-input")
    end
    
    def go_to_homepage
      visit '/'
    end
    
    def find_iframe_login
      loginframe = find("div.myidealo-menu-body iframe")
    end

    def perform_login(username, password)
      find('.myidealo-button-wrapper').click
      Capybara.default_max_wait_time = 7
      within_frame(find_iframe_login) do 
        find("#LoginEmail").set(username) 
        find("#LoginPassword").set(password)
        find_all(".i-button.i-button--expanded")[0].click
      end
    end
    
    def go_to_new_account_form_box
      find('.myidealo-button-wrapper').click
      Capybara.default_max_wait_time = 7
      within_frame(find_iframe_login) do 
        find(".ac-register-link.nowrap").click 
      end
    end
    
    def fill_account_form(email, password)
      within_frame(find_iframe_login) do 
        find("#RegistrationEmail").set(email) 
        find("#RegistrationPassword").set(password)
      end
    end
    
    def submit_account_form
      within_frame(find_iframe_login) do 
        find_all(".i-button.i-button--expanded")[0].click
      end
    end

    def assert_email_address error_message
      within_frame(find_iframe_login) do 
      expect(page).to have_content(error_message) #????
      end
    end




  end
  
end
