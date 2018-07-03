require 'capybara/dsl'

class Project

  include Capybara::DSL

  def initialize
    @new = "Create Project"
    @project_title = "Test Title"
    @project_title_changed = "Test Title Changed"
    @project_desc = "This is my project description 123456789"
  end

  def click_add
    click_link(@new)
  end

  def fill_in_title
    find(:id, "project_title").send_keys(@project_title)
  end

  def fill_in_desc
    find(:id, "project_description").send_keys(@project_desc)
  end

  def click_project
    click_link(@project_title)
  end

  def edit_project
    find(:id, "project_title").native.clear
    find(:id, "project_title").send_keys(@project_title_changed)
  end

  def check_edit
    find(:xpath, "/html/body/div/div[2]/p[1]").text
  end

end
