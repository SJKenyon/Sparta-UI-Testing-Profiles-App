require_relative "pages/profiles_certifications"
require_relative "pages/profiles_custom_sections"
require_relative "pages/profiles_education"
require_relative "pages/profiles_employment"
require_relative "pages/profiles_login"
require_relative "pages/profiles_profiles"
require_relative "pages/profiles_projects"
require_relative "pages/profiles_sections"

module Profiles

  def certification
    Certification.new
  end

  def custom
    Custom.new
  end

  def education
    Education.new
  end

  def employment
    Employment.new
  end

  def log_in
    LogIn.new
  end

  def profile
    Profile.new
  end

  def project
    Project.new
  end

  def section
    Section.new
  end

end
