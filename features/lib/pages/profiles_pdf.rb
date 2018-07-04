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

end
