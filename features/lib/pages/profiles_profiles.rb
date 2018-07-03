require 'capybara/dsl'

class Profile

  include Capybara::DSL

  def initialize

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

end
