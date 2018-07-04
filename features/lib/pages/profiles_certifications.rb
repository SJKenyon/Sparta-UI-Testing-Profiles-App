require 'capybara/dsl'

class Certification

  include Capybara::DSL

  def initialize
    @new = "New Certification"
    @certification_title = "Test Title"
    @certification_title_changed = "Test Title Changed"
    @certification_desc = "This is my certification description 123456789"
  end

  def click_add
    click_link(@new)
  end

  def fill_in_title
    find(:id, "certification_title").send_keys(@certification_title)
  end

  def fill_in_desc
    find(:id, "certification_description").send_keys(@certification_desc)
  end

  def click_save
    find(:css, 'input[value="save"]').click
  end

  def click_certification
    click_link(@certification_title)
  end

  def edit_certification
    find(:id, "certification_title").native.clear
    find(:id, "certification_title").send_keys(@certification_title_changed)
  end

  def check_edit
    find(:xpath, "/html/body/div/div[2]/p[1]").text
  end

end
