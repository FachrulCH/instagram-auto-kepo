*** Settings ***
Documentation       [Instagram:Android] Searching person, follow and like his posts
Default Tags        Android
Force Tags          SmokeTest
Resource            ../init.robot
Test Setup          Open "ANDROID" Instagram App
Suite Teardown      Close All Applications


*** Variables ***
${ACTIVITY_NAME}        .activity.MainTabActivity


*** Test Cases ***
Scenario: Searching Person
    Given person name is "fachrulch"
    When I search person name
    Then I should see person profile
    And I follow him
