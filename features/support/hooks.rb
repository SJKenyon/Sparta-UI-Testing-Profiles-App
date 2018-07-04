Before ("@firefox") do
  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end

  Capybara.configure do |config|
    config.default_driver = :firefox
  end
end

After ("@firefox") do
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

  Capybara.configure do |config|
    config.ignore_hidden_elements = true
    config.default_max_wait_time = 10
    config.default_driver = :chrome
  end
end
