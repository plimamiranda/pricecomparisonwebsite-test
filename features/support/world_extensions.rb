module KnowsTheLogin
    
    def my_login
        @my_login ||= KnowsLogin.new
    end

    def home_page
        @home_page ||= Pages::HomePage.new
    end

    def preisvergleich_page
        @preisvergleich_page ||= Pages::PreisVergleichPage.new
    end

    def productcategory_page
        @productcategory_page ||= Pages::ProductCategoryPage.new
    end
    

end

World(KnowsTheLogin)