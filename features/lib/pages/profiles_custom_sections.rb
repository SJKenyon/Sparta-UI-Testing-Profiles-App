require 'capybara/dsl'

class Custom

  include Capybara::DSL

  def initialize
    @new = "New Custom Section"
    @custom_title = "Test Title"
    @custom_title_changed = "Test Title Changed"
    @custom_heading = "Test Heading"
    @custom_body = "This is my custom description 123456789"
  end

  def click_add
    click_link(@new)
  end

  def fill_in_title
    find(:id, "custom_title").send_keys(@custom_title)
  end

  def fill_in_heading
    find(:id, "custom_heading").send_keys(@custom_heading)
  end

  def fill_in_body
    find(:id, "custom_body").send_keys(@custom_body)
  end

  def click_save
    find(:css, 'input[value="save"]').click
  end

  def click_custom
    click_link(@custom_title)
  end

  def edit_custom
    find(:id, "custom_title").native.clear
    find(:id, "custom_title").send_keys(@custom_title_changed)
  end

  def check_edit
    find(:xpath, "/html/body/div/div[2]/p[1]").text
  end

end
