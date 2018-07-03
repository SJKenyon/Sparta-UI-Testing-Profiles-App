require 'capybara/dsl'

class Employment

  include Capybara::DSL

  def initialize
    @new = "New Employment"
    @company = "Test Company"
    @company_changed = "Test Company Changed"
    @role = "Test Role"
    @start = "01/01/2018"
    @end = "01/05/2018"
    @desc = "Testing description 123456789"
    @delete = "Destroy"
    @confirm_delete = "Confirm"
  end

  def click_add
    click_link(@new)
  end

  def fill_in_company
    find(:id, "employment_company").send_keys(@company)
  end

  def fill_in_role
    find(:id, "employment_role").send_keys(@role)
  end

  def fill_in_date
    find(:id, "employment_start_date").send_keys(@start)
    find(:id, "employment_end_date").send_keys(@end)
  end

  def fill_in_desc
    find(:id, "employment_description").send_keys(@desc)
  end

  def click_save
    find(:css, 'input[value="Save"]').click
  end

  def click_back
    click_link("Back")
  end

  def employment_count
    page.all('table tr').count
  end

  def click_employment
    click_link(@company)
  end

  def edit_employment
    find(:id, "employment_company").native.clear
    find(:id, "employment_company").send_keys(@company_changed)
  end

  def check_edit
    find(:xpath, "/html/body/div/div[2]/p[3]").text
  end

  def click_delete
    click_link(@delete)
    click_button(@confirm_delete)
  end

end
