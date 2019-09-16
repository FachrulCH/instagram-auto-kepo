*** Settings ***
Library             AppiumLibrary  timeout=5  run_on_failure=On automation failure
Library             String
Library             Collections
Library             DebugLibrary
Resource            ../resources/device_management.robot
Resource            ../screens/screens.robot
Resource            ../resources/keywords/given_preparations.robot
Resource            ../resources/keywords/when_actions.robot
Resource            ../resources/keywords/then_assertions.robot


*** Variables ***


*** Keywords ***
Console Log
    [Arguments]     ${data}
    Log To Console      \n ===> ${data}

On automation failure
    Capture Page Screenshot
    Log Source