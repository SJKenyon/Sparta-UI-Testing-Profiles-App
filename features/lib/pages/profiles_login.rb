require 'capybara/dsl'

class LogIn

  include Capybara::DSL

  def initialize
    @login_url = ENV['PROFILES_URL']
    @email_a = ENV['ADMIN_EMAIL']
    @password_a = ENV['ADMIN_PASS']
    @email_t = ENV['TRAINEE_EMAIL']
    @password_t = ENV['TRAINEE_PASS']
  end

  def visit_login
    visit(@login_url)
  end

  def log_in_admin
    find_field("email").send_keys(@email_a)
    find_field("password").send_keys(@password_a)
  end

  def log_in_trainee
    find_field("email").send_keys(@email_t)
    find_field("password").send_keys(@password_t)
  end

  def click_login
    find(:css, 'input[value="submit"]').click
  end

end
