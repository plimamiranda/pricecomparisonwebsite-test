Feature: Register account
    In order to prevent user from registering new account with invalid values 
    I want to validate personal details form 
    
        Background:
            Given the user is on home page

        @form
        Scenario: Register account with empty email
            Given the user is on register account form
             When the user fill the registration form without the email address field
              And the user submit the registration form
             Then "Bitte gib eine gültige E-Mail-Adresse ein" message is displayed

        # @form
        Scenario Outline: Register account with malformed email address
            Given the user is on register account form
             When the user fill the registration form with <malformed email address> as email address
              And the user submit the registration form
             Then "Bitte gib eine gültige E-Mail-Adresse ein" message is displayed

        Examples:
                  |malformed email address|
                  |simpleaddress|
                  |%ˆ&$%ˆ&.com  |

        # @form
        Scenario: Register account with empty password field
            Given the user is on register account page
             When the user fill the registration form without the password field
              And the user submit the registration form
             Then "Bitte gib ein Passwort ein" message is displayed

        # @form
        Scenario Outline: Register account with wrong password field
            Given the user is on register account page
             When the user fill the registration form with <wrong password> field
              And the user submit the registration form
             Then "Bitte gib ein Passwort ein" message is displayed
        Examples:
                  |  wrong password  |
                  |            1234  |
                  |            22222 |
                  
        # @form
        Scenario Outline: Register account without checking Terms and conditions checkbox
            Given the user is on register account page
             When the user fill the registration form
              But do not check the Terms and conditions checkbox
              And the user submit the registration form
             Then "Bitte aktiviere die Checkbox." message is displayed
        
                  
         
         
