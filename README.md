# UI Testing - Sparta Profiles App

## How to run the program
1. Clone this repository to your machine by downloading the zip file.

2. Extract the contents of the zip file.

3. Open the Terminal.

4. Run the command ``bundle`` to ensure all the gems are installed correctly.
  - You will need to clone down the [Original Profiles app](https://github.com/spartaglobal/Profiles) from github and run the rails server from inside the file structure. This will then allow you to use your own local server instead of testing the live versions database. The documentation on their page will allow you to do this.
  - For these tests to run you will need to create your own ".env" file in the root of the project. You will need to add your own variables which are:
    - PROFILES_URL=http://localhost:3000
    - PROFILES_URL_ADMIN_HOME=http://localhost:3000/profiles/adminindex
    - PROFILES_URL_TRAINEE_HOME=http://localhost:3000/profiles
    - ADMIN_EMAIL=[Admin's Email]
    - ADMIN_PASS=[Admin's Password]
    - TRAINEE_EMAIL=[Trainee's Email]
    - TRAINEE_PASS=[Trainee's Password]
  - These will be created by your trainers who will be able to complete this information.

  - For any help using dotenv files, use this [documentation](https://github.com/bkeepers/dotenv).

5. From the Sparta-UI-Testing-Profiles-App directory, run the command ``cucumber`` in the console. This will go through each method of CRUD for the tabs.

6. If you want to check the full user journey of someone making a profile, run the command ``cucumber -t @journey``. It will delete everything from the database after it has run the whole process of creating profile.

---

### Environment

- Git used for version control
- Cucumber to run the tests
  - Gherkin syntax to write tests cases
- Selenium WebDriver and Capybara as automation tools
- Trello for management of scrum board

### OOP Approach
Using Ruby objects, classes, superclasses and methods ensured a POM (Page Object Model) was implemented from the start. This enables other users to easily add more tests, re-using previously defined objects and methods. This therefore saves the Product Owner precious time and money on their way to deploying the software.

### Tools and Technologies
This project used Behaviour Driven Development. Writing the framework in Ruby, Selenium WebDriver was used to simulate the process of the user's journey. In addition, Cucumber was used to run the tests which were written in user friendly Gherkin syntax. The framework is accessible to for future users, and for less technical minded people wanting an overview of the tests.
