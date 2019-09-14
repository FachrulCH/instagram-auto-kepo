*** Settings ***
Library           AppiumLibrary  timeout=5  run_on_failure=On automation failure
Library             AppiumLibrary       timeout=30
Library             String
Library             Collections
Library             DebugLibrary
Resource            ../resources/device_management.robot
# Sceens
Resource            ../screens/screens.robot
# Given keywords
Resource            ../resources/keywords/preparations.robot
# When keywords
Resource            ../resources/keywords/actions.robot
# Then keywords
Resource            ../resources/keywords/assertions.robot


*** Variables ***


*** Keywords ***
Console Log
    [Arguments]     ${data}
    Log To Console      \n ===> ${data}