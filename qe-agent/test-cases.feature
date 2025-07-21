Feature: Event Planner App
    As a user
    I want to manage events, profiles, and notifications
    So that I can plan and participate in events efficiently

    Scenario: User can sign up with valid details
        Given I am not logged in
        When I open the Sign-Up screen
        And I enter valid first name, last name, email, password, phone number, and address
        And I tap the Sign Up button
        Then I should be signed up and redirected to first-time profile setup

    Scenario: User can log in with valid credentials
        Given a valid account exists
        When I open the Login screen
        And I enter a registered email and password
        And I tap the Login button
        Then I should be redirected to the home page

    Scenario: User cannot log in with invalid credentials
        Given I am on the Login screen
        When I enter an invalid email or password
        And I tap the Login button
        Then I should see an error message "Invalid credentials"

    Scenario: User is redirected to profile setup after first login
        Given I have just signed up and logged in
        When I upload a profile image and enter remaining details
        And I save the profile
        Then my profile should be saved and I should be redirected to the home screen

    Scenario: User can edit their profile
        Given I am on the Profile tab
        When I edit my name, address, or phone
        And I tap Save
        Then my updated profile should be saved in Firebase

    Scenario: Top image slider displays 10 images
        Given I am logged in
        When I view the top image section
        Then I should see 10 images in a carousel using the photos API

    Scenario: Event organizers list loads from API
        Given I am on the home page
        When I scroll to the organizer section
        Then I should see users listed from the users API

    Scenario: User can view post count and navigate to posts list
        Given I am on the home page
        When I tap on the post count
        Then I should be navigated to the posts list
        And posts should be listed from the posts API
        And each post should be expandable to show comments from the comments API

    Scenario: User can logout and see app version in drawer
        Given I am logged in
        When I open the drawer
        And I tap Logout
        Then I should be logged out and redirected to the login screen
        And I should see the version info at the bottom of the drawer

    Scenario: User receives scheduled push notifications
        Given Firebase Messaging is set up
        When it is 8am, 12pm, or 5pm
        Then I should receive a notification

    Scenario: Form fields show validation errors
        Given I am on a form (signup or edit profile)
        When I enter invalid values in each field
        And I try to submit
        Then I should see red borders and error messages on invalid fields

    Scenario: Form logic and API triggers are unit tested
        Given I have flutter_test or equivalent set up
        When I mock form submission and API calls
        Then validation and API triggers should be asserted successfully

    Scenario: App handles API failure gracefully
        Given an API failure occurs
        Then I should see an appropriate message or fallback UI

    # Other Notes
    # - Test with both Android and iOS simulators
    # - Test offline mode behavior if supported
    # - Test app responsiveness on various screen sizes
