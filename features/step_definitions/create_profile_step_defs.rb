Given("I am on the log in page") do
  log_in.visit_login
end

And("I enter my details as a trainer") do
  log_in.log_in_admin
end

When("I click submit") do
  log_in.click_login
end

Then("I should be redirected to the profiles index page for trainers") do
  expect(log_in.current_url).to eq(ENV['PROFILES_URL_ADMIN_HOME'])
end

And("I enter my details as a trainee") do
  pending
  # log_in.log_in_trainee
end

Then("I should be redirected to the profiles index page for trainees") do
  pending
  # expect(log_in.current_url).to eq("")
end

Given("I am logged in") do
  log_in.visit_login
  log_in.log_in_admin
  log_in.click_login
end

Given("I navigate to the project section") do
  profile.click_projects
end

When("I click to add a new project") do
  project.click_add
end

When("fill in the correct details of my project") do
  project.fill_in_title
  project.fill_in_desc
  overlap.click_save
end

Then("it should show my project on the index") do
  overlap.click_back
  expect(overlap.table_count).to eq 3
end

When("I click edit project") do
  project.click_project
end

When("change the details on my project form") do
  project.edit_project
  overlap.click_save
end

Then(/^it should show the new title (.*) on my project id page$/) do |title|
  @new_title = title
  expect(project.check_edit).to include(@new_title)
end

When("I click to delete the project") do
  overlap.click_delete
end

Then("it should remove the project from that page") do
  expect(overlap.table_count).to eq 2
end

Given("I navigate to the employment section") do
  profile.click_employment
end

When("I click to add a new employment history") do
  employment.click_add
end

When("fill in the correct details of my employment") do
  employment.fill_in_company
  employment.fill_in_role
  employment.fill_in_date
  employment.fill_in_desc
  overlap.click_save
end

Then("it should show my employment history on the index") do
  overlap.click_back
  expect(overlap.table_count).to eq 3
end

When("I click edit employment") do
  employment.click_employment
end

When("change the details on my employment form") do
  employment.edit_employment
  overlap.click_save
end

Then(/^it should show the new company (.*) on my employment id page$/) do |company|
  @new_comp = company
  expect(employment.check_edit).to include(@new_comp)
end

When("I click to delete an employment history") do
  overlap.click_delete
end

Then("it should remove that employment history from the index page") do
  expect(overlap.table_count).to eq 2
end

Given("I navigate to the education section") do
  profile.click_education
end

When("I click to add new education details") do
  education.click_add
end

When("fill in the correct details of my education") do
  education.fill_in_institution
  education.fill_in_course
  education.fill_in_date
  education.fill_in_desc
  overlap.click_save
end

Then("it should show my education details on the index page") do
  overlap.click_back
  expect(overlap.table_count).to eq 3
end

When("I click to edit my education details") do
  education.click_education
end

When("change the details on the education form") do
  education.edit_education
  overlap.click_save
end

Then(/^it should show the new institution (.*) on the id page$/) do |institution|
  @new_inst = institution
  expect(education.check_edit).to include(@new_inst)
end

When("I click to delete the education details") do
  overlap.click_delete
end

Then("it should not show my education details on the index page") do
  expect(overlap.table_count).to eq 2
end

Given("I navigate to the certification section") do
  profile.click_certifications
end

When("I click to add a new certification") do
  certification.click_add
end

When("fill in the correct details of my certification") do
  certification.fill_in_title
  certification.fill_in_desc
  certification.click_save
end

Then("it should show my certification on the index page") do
  overlap.click_back
  expect(overlap.table_count).to eq 3
end

When("I click to edit my certification") do
  certification.click_certification
end

When("change the details on the certification form") do
  certification.edit_certification
  certification.click_save
end

Then(/^it should show the new title (.*) on the id page$/) do |title|
  @new_title = title
  expect(certification.check_edit).to include(@new_title)
end

When("I click to delete the certification") do
  overlap.click_delete
end

Then("it should not show the certification on the index page") do
  expect(overlap.table_count).to eq 2
end

Given("I navigate to the custom section") do
  profile.click_customs
end

When("I click to add a new custom section") do
  custom.click_add
end

When("fill in the correct details for the custom section") do
  custom.fill_in_title
  custom.fill_in_heading
  custom.fill_in_body
  overlap.click_save
end

Then("it should show my custom details on the index page") do
  expect(overlap.table_count).to eq 3
end

When("I click to edit my custom section") do
  custom.click_custom
end

When("change the details on the custom form") do
  custom.edit_custom
  overlap.click_save
end

Then(/^it should show the new title (.*) on the custom id page$/) do |title|
  @new_title = title
  expect(custom.check_edit).to include(@new_title)
end

When("I click to delete the custom section") do
  overlap.click_delete
end

Then("it should not show my custom section on the index page") do
  expect(overlap.table_count).to eq 2
end

Given("I navigate to the extra section") do
  profile.click_sections
end

When("I click to add a new section") do
  section.click_add
end

When("fill in the correct details on the section page") do
  section.fill_in_title
  section.fill_in_desc
  section.fill_in_skills
  overlap.click_save
end

Then("it should show the new section on the index page") do
  overlap.click_back
  expect(overlap.table_count).to eq 3
end

When("I click to edit my section") do
  section.click_section
end

When("change the details on the section form") do
  section.edit_section
  overlap.click_save
end

Then(/^it should show the new title (.*) on the section id page$/) do |title|
  @new_title = title
  expect(section.check_edit).to include(@new_title)
end

When("I click to delete my section") do
  overlap.click_delete
end

Then("it should not show my section on the index page") do
  expect(overlap.table_count).to eq 2
end

When("I click create a profile") do
  pending
end

Then("I should be given a drop down list of streams to choose from") do
  pending
end

When("I click new profile") do
  pending
end

When("add the correct details") do
  pending
end

Then("it should show me the profile on the index page") do
  pending
end

When("I click edit profile") do
  pending
end

When("change the details on my profile form") do
  pending
end

Then("it should show the updated details on the id page") do
  pending
end

Given("there is already a profile created") do
  pending
end

When("I click to delete the profile") do
  pending
end

Then("it should remove the profile from that page") do
  pending
end

When("I create a new profile") do
  pending
end

When("click save") do
  pending
end

Then("it should redirect me to that specific profiles page") do
  pending
end

When("I click download on an already created profile") do
  pending
end

Then("it should redirect me to the profile as a PDF document") do
  pending
end

When("click the download button on the PDF viewer") do
  pending
end

Then("it should download the file") do
  pending
end
