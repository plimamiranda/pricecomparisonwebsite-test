
Feature: Search & Save Product
         
        Background:
            Given the webbrowser is on home page
              And the user is logged in
        
        @adding
        Scenario Outline: User adding product to Wishlist
             When the user search for a <product>
              And the list of products are dysplayed
              And the user choose and click to send one product to Merkzettel
             Then the product should be included in his Merkzettel
        Examples:
                  |product|
                  |Sofa|

        @alerts_creation
        Scenario Outline: User create a Price Alert
             When the user search for a <product>
              And the user create an Alert for a wished <price>
             Then a email will be sended to confirm the action
        Examples:
                  | product | price  |
                  | monitor | 120    |
      
            
         