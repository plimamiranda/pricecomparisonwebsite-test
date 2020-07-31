require 'capybara/cucumber'
require 'rspec/expectations'
require 'capybara/rspec'
require 'capybara/rspec/matchers'
include RSpec::Matchers

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'https://www.idealo.de/'




  