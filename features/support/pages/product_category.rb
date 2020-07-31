module Pages
    class ProductCategoryPage
        include RSpec::Matchers
        include Capybara::DSL 
        
        def go_to_productcategory_page
            find_all("div.swiper-slide")[3].click
        end

        def select_price_range
            within("#price-filter") do 
                #find_all("span.filter-tagItemValue")[4].text
                find_all("span.filter-tagCheckboxBg")[4].click 
             end
        end
        
        def confirm_price_range
            expect(page).to have_css(".filterTag-item")
        end

        def select_order_of_offerList
            find(".sortBox-formSelect").select 'Beste Testnote zuerst'
        end 
    
        
    end
end
