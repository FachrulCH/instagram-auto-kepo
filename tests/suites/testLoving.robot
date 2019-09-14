*** Settings ***
Resource          ../resources/common.robot
Resource          ../pageObjects/MainTabScreen.robot

Force Tags        demo-test
Suite Setup       Open app
Suite Teardown    Close app
Test Setup        Sleep  1s

*** Test Cases ***
Test love only
    Given person target is "fachrulch"
    When I see profile
    Then I give "2" times love
