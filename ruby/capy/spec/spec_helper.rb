require "capybara"
require "capybara/rspec"
require "selenium-webdriver"

#Here is at everything starts
RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  config.before(:example) do
    #For all test cases we resize our window to 1200 x 800 
    page.current_window.resize_to(1200,800)
  end

end

#Capybara project to be executed by Google Chrome
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  #We have until 5 seconds to find an element
  config.default_max_wait_time = 5
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'

end
