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
    @delete = "Destroy"
    @confirm_delete = "Confirm"
  end

  def click_add
    click_link(@new)
  end

end
