*** Settings ***
Library           AppiumLibrary  timeout=5  run_on_failure=On automation failure
Library             AppiumLibrary       timeout=30
Library             String
Library             Collections
Resource            ../resources/device_management.robot
Resource            ../resources/keywords/preparations.robot
Resource            ../resources/keywords/actions.robot
Resource            ../resources/keywords/assertions.robot

*** Variables ***


*** Keywords ***
Console Log
    [Arguments]     ${data}
    Log To Console      \n ===> ${data}