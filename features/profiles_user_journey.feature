Feature: I should be able to create a full profile

  @journey
  Scenario: Using valid details I should be able to log in
    Given I am on the log in page
    And I enter my details as a trainer
    When I click submit
    Then I should be redirected to the profiles index page for trainers

  @journey
  Scenario: Using valid details I should be able to log in
    Given I am on the log in page
    And I enter my details as a trainee
    When I click submit
    Then I should be redirected to the profiles index page for trainees

  @journey
  Scenario: I should be able to add a new project
    Given I am logged in
    And I navigate to the project section
    When I click to add a new project
    And fill in the correct details of my project
    Then it should show my project on the index

  @journey
  Scenario: I should be able to add employment details
    Given I am logged in
    And I navigate to the employment section
    When I click to add a new employment history
    And fill in the correct details of my employment
    Then it should show my employment history on the index

  @journey
  Scenario: I should be able to add education details
    Given I am logged in
    And I navigate to the education section
    When I click to add new education details
    And fill in the correct details of my education
    Then it should show my education details on the index page

  @journey
  Scenario: Certifications create
    Given I am logged in
    And I navigate to the certification section
    When I click to add a new certification
    And fill in the correct details of my certification
    Then it should show my certification on the index page

  @journey
  Scenario: Custom Sections create
    Given I am logged in
    And I navigate to the custom section
    When I click to add a new custom section
    And fill in the correct details for the custom section
    Then it should show my custom details on the index page

  @journey
  Scenario: Sections create
    Given I am logged in
    And I navigate to the extra section
    When I click to add a new section
    And fill in the correct details on the section page
    Then it should show the new section on the index page

  @journey
  Scenario: I should be able to create a profile
    Given I am logged in
    When I click new profile
    And add the correct details
    Then it should show me the profile on the index page

  @journey
  @firefox
  Scenario: I should be able to view my profile as a PDF document
    Given I am logged in
    When I click download on an already created profile
    Then it should redirect me to the profile as a PDF document

  @journey
  @firefox
  Scenario: The data on the PDF should match what I addded in earlier tests
    Given I am logged in
    When I visit the PDF page of the profile
    Then it should show the correct details

  @journey
  Scenario: I should be able to delete a profile
    Given I am logged in
    And there is already a profile created
    When I click to delete the profile
    Then it should remove the profile from that page

  @journey
  Scenario: I should be able to delete a project
    Given I am logged in
    And I navigate to the project section
    When I click to delete the project
    Then it should remove the project from that page

  @journey
  Scenario: I should be able to delete employment history
    Given I am logged in
    And I navigate to the employment section
    When I click to delete an employment history
    Then it should remove that employment history from the index page

  @journey
  Scenario: Education destroy
    Given I am logged in
    And I navigate to the education section
    When I click to delete the education details
    Then it should not show my education details on the index page

  @journey
  Scenario: Certifications destroy
    Given I am logged in
    And I navigate to the certification section
    When I click to delete the certification
    Then it should not show the certification on the index page

  @journey
  Scenario: Custom Sections destroy
    Given I am logged in
    And I navigate to the custom section
    When I click to delete the custom section
    Then it should not show my custom section on the index page

  @journey
  Scenario: Sections destroy
    Given I am logged in
    And I navigate to the extra section
    When I click to delete my section
    Then it should not show my section on the index page
