require 'capybara/cucumber'
require 'capybara/dsl'
require 'pry'
require_relative '../lib/profiles_site'
require 'dotenv'
Dotenv.load(".env")

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = true
  config.default_max_wait_time = 10
  config.default_driver = :chrome
end

World(Profiles)
