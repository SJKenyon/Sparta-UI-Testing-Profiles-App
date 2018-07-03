Feature: I should be able to create a profile

  @valid_login_a
  Scenario: Using valid details I should be able to log in
    Given I am on the log in page
    And I enter my details as a trainer
    When I click submit
    Then I should be redirected to the profiles index page for trainers

  @valid_login_t
  Scenario: Using valid details I should be able to log in
    Given I am on the log in page
    And I enter my details as a trainee
    When I click submit
    Then I should be redirected to the profiles index page for trainees

  @project
  @create_project
  Scenario: I should be able to add a new project
    Given I am logged in
    And I navigate to the project section
    When I click to add a new project
    And fill in the correct details of my project
    Then it should show my project on the index

  @project
  @update_project
  Scenario: I should be able to edit a project
    Given I am logged in
    And I navigate to the project section
    When I click edit project
    And change the details on my project form
    Then it should show the new title Test Title Changed on my project id page

  @project
  @destroy_project
  Scenario: I should be able to delete a project
    Given I am logged in
    And I navigate to the project section
    When I click to delete the project
    Then it should remove the project from that page

  @employment
  @create_employment
  Scenario: I should be able to add employment details
    Given I am logged in
    And I navigate to the employment section
    When I click to add a new employment history
    And fill in the correct details of my employment
    Then it should show my employment history on the index

  @employment
  @update_employment
  Scenario: I should be able to edit employment details
    Given I am logged in
    And I navigate to the employment section
    When I click edit employment
    And change the details on my employment form
    Then it should show the new company Test Company Changed on my employment id page

  @employment
  @destory_employment
  Scenario: I should be able to delete employment history
    Given I am logged in
    And I navigate to the employment section
    When I click to delete an employment history
    Then it should remove that employment history from the index page

  Scenario: I should be able to add education details
    Given I am logged in
    And I navigate to the education section
    When I click to add new education details
    And fill in the correct details of my education
    Then it should show my education details on the index page

  Scenario: Education edit
    Given I am logged in
    And I navigate to the education section
    When I click to edit my education details
    And change the details on the education form
    Then it should show the new institution Test Institution Changed on the id page

  Scenario: Education destroy
    Given I am logged in
    And I navigate to the education section
    When I click to delete the education details
    Then it should not show my education details on the index page

  Scenario: Certifications create
    Given I am logged in
    And I navigate to the certification section
    When I click to add a new certification
    And fill in the correct details of my certification
    Then it should show my certification on the index page

  Scenario: Certifications edit
    Given I am logged in
    And I navigate to the certification section
    When I click to edit my certification
    And change the details on the certification form
    Then it should show the new title Test Title Changed on the id page

  Scenario: Certifications destroy
    Given I am logged in
    And I navigate to the certification section
    When I click to delete the certification
    Then it should not show the certification on the index page

  Scenario: Custom Sections create
    Given I am logged in
    And I navigate to the custom section
    When I click to add a new custom section
    And fill in the correct details for the custom section
    Then it should show my custom details on the index page

  Scenario: Custom Sections edit
    Given I am logged in
    And I navigate to the custom section
    When I click to edit my custom section
    And change the details on the custom form
    Then it should show the new title Test Title Changed on the custom id page

  Scenario: Custom Sections destroy
    Given I am logged in
    And I navigate to the custom section
    When I click to delete the custom section
    Then it should not show my custom section on the index page

  Scenario: Sections create
    Given I am logged in
    And I navigate to the extra section
    When I click to add a new section
    And fill in the correct details on the section page
    Then it should show the new title Test Title Changed on the index page

  Scenario: Sections edit
    Given I am logged in
    And I navigate to the extra section
    When I click to edit my section
    And change the details on the section form
    Then it should show the updated details on the section id page

  Scenario: Sections destroy
    Given I am logged in
    And I navigate to the extra section
    When I click to delete my section
    Then it should not show my section on the index page

  Scenario: I should be able to choose my education stream at the academy
    Given I am logged in
    When I click create a profile
    Then I should be given a drop down list of streams to choose from

  Scenario: I should be able to create a profile
    Given I am logged in
    When I click new profile
    And add the correct details
    Then it should show me the profile on the index page

  Scenario: I should be able to view an already created profile
    Given I am logged in
    And there is already a profile created
    When I click on the profile
    Then it should show me the profile

  Scenario: I should be able to edit my profile
    Given I am logged in
    When I click edit profile
    And change the details on my profile form
    Then it should show the updated details on the id page

  Scenario: I should be able to delete a profile
    Given I am logged in
    And there is already a profile created
    When I click to delete the profile
    Then it should remove the profile from that page

  Scenario: I should be able to view my profile straight after completion
    Given I am logged in
    When I create a new profile
    And click save
    Then it should redirect me to that specific profiles page

  Scenario: I should be able to view my profile as a PDF document
    Given I am logged in
    When I click download on an already created profile
    Then it should redirect me to the profile as a PDF document

  Scenario: I should be able to download my profile
    Given I am logged in
    When I click download on an already created profile
    And click the download button on the PDF viewer
    Then it should download the file
