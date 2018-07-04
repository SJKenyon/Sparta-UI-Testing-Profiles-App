require 'capybara/dsl'

class Education

  include Capybara::DSL

  def initialize
    @new = "Add Education"
    @institution = "Test Institution"
    @institution_changed = "Test Institution Changed"
    @course = "Test Course"
    @start = "01/01/2018"
    @end = "01/05/2018"
    @desc = "Testing description 123456789"
  end

  def click_add
    click_link(@new)
  end

  def fill_in_institution
    find(:id, "education_institution").send_keys(@institution)
  end

  def fill_in_course
    find(:id, "education_course").send_keys(@course)
  end

  def fill_in_date
    find(:id, "education_start_date").send_keys(@start)
    find(:id, "education_end_date").send_keys(@end)
  end

  def fill_in_desc
    find(:id, "education_description").send_keys(@desc)
  end

  def click_education
    click_link(@institution)
  end

  def edit_education
    find(:id, "education_institution").native.clear
    find(:id, "education_institution").send_keys(@institution_changed)
  end

  def check_edit
    find(:xpath, "/html/body/div/div[2]/p[3]").text
  end

end
