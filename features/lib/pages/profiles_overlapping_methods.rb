require 'capybara/dsl'

class Overlap

  include Capybara::DSL

  def initialize
    @delete = "Destroy"
    @confirm_delete = "Confirm"
  end

  def click_save
    find(:css, 'input[value="Save"]').click
  end

  def click_back
    click_link("Back")
  end

  def table_count
    page.all('table tr').count
  end

  def check_on_page
    page.has_no_content?('Projects')
  end

  def click_delete
    click_link(@delete)
    click_button(@confirm_delete)
  end

  def find_delete
    page.all('a', text: @delete)
  end

  def click_confirm
    click_button(@confirm_delete)
  end

end
