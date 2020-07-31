module Pages
    class PreisVergleichPage
        include RSpec::Matchers
        include Capybara::DSL 
        
        def find_and_select_one_product
            find_all("div.offerList-item")[5].click
        end
        
        def has_list_of_products?
            expect(page).to have_css("div.offerList-item")
        end
        
        def has_productVariants?
            expect(page).to have_text("Varianten")
        end
        
        def select_first_product_variant
            find_all("div.productVariants-listItem")[0].click
        end
        
        def action_Favourites
            find("div.oopStage-actionFavourites").click
        end
        
        def go_to_mekzettel
            find(".i-wishlist-element-text").click
        end
        
        def get_product_description_from_title
            product_description = ""
            within(".oopStage-title") do 
                product_description = find_all("span")[0].text 
            end
            product_description
        end
        
        def check_product_in_merkzettel(product_description)
            expect(page).to have_content("Mein Merkzettel")
            expect(page).to have_content(product_description)
        end
        
        def add_product_to_favorites
            if has_productVariants?
                select_first_product_variant
                action_Favourites
            else
                action_Favourites
            end
        end
        
        def create_alert_price_with(price)
            find(".oopStage-actionPricewatcherTitle").click
            find('.priceAlertOverlay-targetPriceInput').set(price).send_keys(:tab)
            find('.priceAlertOverlay-includeDeliveryLabel').click
            click_button('Speichern')
        end            
        
        def confirm_email_message
            expect(page).to have_content("Wir haben Dir eine E-Mail mit einem Bestätigungs-Link an")
        end
    end
        
    end