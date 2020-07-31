Feature: Register to Idealo newsletter
              In order to prevent user from registering to newsletter with invalid values
              I want to validate personal details form
              And if the email confirmation was sended
         
        Background:
            Given the user is at newsletter page
        
        Scenario Outline: Register to newsletter
            
             When the user fill the newsletter form with a valid <email>
              And the user submit the registration form
             Then an email should be sended to confirm and complete the registration

        Examples:
                  | email                |
                  | fakeemail@email.fake |

        Scenario: Register to newsletter with empty email
             When the user fill the newsletter form without the email address field
              And the user submit the registration
             Then "Bitte überprüfe Deine E-Mail-Adresse" message is displayed


        Scenario Outline: Register to Newsletter with malformed email address
             When the user fill the newsletter form with <malformed email address> as email address
              And the user submit the registration
             Then "Bitte überprüfe Deine E-Mail-Adresse" message is displayed

        Examples:
                  | malformed email address |
                  | simpleaddress           |
                  | %ˆ&$%ˆ&.com             |

         


 