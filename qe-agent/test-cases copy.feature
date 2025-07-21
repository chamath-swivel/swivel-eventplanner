Feature: Event Planner App
    As a user
    I want to manage events and attendees
    So that I can plan and participate in events efficiently

    Scenario: User can create an event with valid data
        Given I am on the event creation page
        When I enter valid event details (title, date, location, description)
        And I click the create event button
        Then I should see a success message
        And the event should appear in the event list

    Scenario: User cannot create an event with missing required fields
        Given I am on the event creation page
        When I leave required fields empty
        And I click the create event button
        Then I should see an error message

    Scenario: User cannot create an event with a past date
        Given I am on the event creation page
        When I enter a date in the past
        And I click the create event button
        Then I should see an error message

    Scenario: User can edit an existing event
        Given I am viewing an existing event
        When I click the edit button
        And I update the event details
        And I save the changes
        Then the updated details should be shown in the event list

    Scenario: User can delete an event
        Given I am viewing an existing event
        When I click the delete button
        And I confirm the deletion
        Then the event should be removed from the event list

    Scenario: User can view event details
        Given I am on the event list page
        When I tap on an event
        Then I should see the event details (title, date, location, description, attendees)

    Scenario: User can RSVP to an event
        Given I am viewing an event details page
        When I select an RSVP option (Yes/No/Maybe)
        Then my RSVP status should be updated and shown in the attendee list

    Scenario: App displays error on network failure
        Given I am performing any event operation
        When a network error occurs
        Then I should see an error message

    Scenario: App handles empty event list
        Given there are no events created
        When I open the event list page
        Then I should see a message indicating no events are available

    Scenario: Navigation between screens works as expected
        Given I am on any app screen
        When I navigate to another screen (event list, details, creation, edit)
        Then the navigation should work without errors
