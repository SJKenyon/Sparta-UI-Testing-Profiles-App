require 'capybara/dsl'

class Profile

  include Capybara::DSL

  def initialize
    @summary = "This is my testing profile summary"
    @new_summary = "This is my new testing profile summary"
    @degree = "I got a degree"
  end

  def click_projects
    page.all('a', text: 'Projects')[0].click
  end

  def click_employment
    page.all('a', text: 'Employment')[0].click
  end

  def click_education
    page.all('a', text: 'Education')[0].click
  end

  def click_certifications
    page.all('a', text: 'Certifications')[0].click
  end

  def click_customs
    click_link("Custom Sections")
  end

  def click_sections
    click_link("Sections")
  end

  def click_add
    click_link("Create a profile")
  end

  def profile_stream_exists
    page.find(:id, "profile_stream").has_content?("SDET")
  end

  def fill_in_summary
    find(:id, "profile_summary").send_keys(@summary)
  end

  def choose_stream

  end

  def fill_in_degree
    find(:id, "profile_degree").send_keys(@degree)
  end

  def select_modules
    page.all(:xpath, "//div/label").each do |button|
      button.click
    end
    find(:id, "profile_status_pending").click
  end

  def click_back
    click_link("Back to Profiles")
  end

  def click_edit
    click_link("Edit")
  end

  def change_profile_summary
    find(:id, "profile_summary").native.clear
    find(:id, "profile_summary").send_keys(@new_summary)
  end

  def check_edit
    find(:xpath, "/html/body/div/div[2]/div[2]/div[3]/div").text
  end

  def click_download
    click_link("Download")
  end

end
