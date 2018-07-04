require 'capybara/dsl'

class Pdf

  include Capybara::DSL

  def initialize
    @toolbar = "toolbarViewerRight"
  end

  def on_pdf
    find(:id, @toolbar)
  end

  def download_pdf
    click_button("Download")
  end

  def check_projects
    find(:xpath, "/html/body/div[1]/div[2]/div[4]/div/div[1]/div[2]/div[14]").text
  end

  def check_employment
    find(:xpath, "/html/body/div[1]/div[2]/div[4]/div/div[1]/div[2]/div[18]").text
  end

  def check_education
    find(:xpath, "/html/body/div[1]/div[2]/div[4]/div/div[1]/div[2]/div[23]").text
  end

  def check_certifications
    find(:xpath, "/html/body/div[1]/div[2]/div[4]/div/div[2]/div[2]/div[2]").text
  end

  def check_custom
    find(:xpath, "/html/body/div[1]/div[2]/div[4]/div/div[2]/div[2]/div[4]").text
  end

  def check_section
    find(:xpath, "/html/body/div[1]/div[2]/div[4]/div/div[1]/div[2]/div[9]").text
  end

end
