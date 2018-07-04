require 'capybara/dsl'

class Section

  include Capybara::DSL

  def initialize
    @new = "New Section"
    @section_title = "Test Title"
    @section_title_changed = "Test Title Changed"
    @section_desc = "This is my section description 123456789"
    @section_skills = "Skill, Skillz"
  end

  def click_add
    click_link(@new)
  end

  def fill_in_title
    find(:id, "section_title").send_keys(@section_title)
  end

  def fill_in_desc
    find(:id, "section_description").send_keys(@section_desc)
  end

  def fill_in_skills
    find(:id, "section_skills").send_keys(@section_skills)
  end

  def click_section
    click_link("Edit")
  end

  def edit_section
    find(:id, "section_title").native.clear
    find(:id, "section_title").send_keys(@section_title_changed)
  end

  def check_edit
    find(:xpath, "/html/body/div/div[2]/p[1]").text
  end

end
