Feature: Check Filters on Product Category


        Background:
            Given The user is on Product Category Page

        @filters
        Scenario: Check Preis filter
             When the user select a price range
             Then only product within the price range select will be displayed

        @filters
        Scenario: Sortieren Box
             When the user choose how the offerlist should be ordenate
             Then the offerlist should be ordenate as selected

         

        

 