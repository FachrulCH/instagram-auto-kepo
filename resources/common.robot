*** Settings ***
Library           AppiumLibrary  timeout=5  run_on_failure=On automation failure


*** Variables ***
${WaitActivity timeout}  10
${REMOTE_URL}           http://localhost:4723/wd/hub
${APPPACKAGE}           com.instagram.android
${HomeActivity}         .activity.MainTabActivity
${group button}         id=row_feed_view_group_buttons
${icon love}            xpath=//android.widget.ImageView[@content-desc='Liked']
${icon unlove}          xpath=//android.widget.ImageView[@content-desc='Like']
${footer home}          xpath=//android.widget.FrameLayout[@content-desc='Home']

*** Keywords ***
Open app
    Log To Console      \n Begin Test Suite Setup
    Open Application    ${REMOTE_URL}   platformName=Android   deviceName=device   automationName=UIAutomator2   appPackage=${APPPACKAGE}   appActivity=${HomeActivity}   noReset=true
    Log To Console      \n Wait for ${HomeActivity}
    Wait Activity    ${HomeActivity}    30    2
    # Capture Page Screenshot

Close app
    Log To Console      \n Penutupan Test Suite Teardown
    Close Application

On automation failure
    Capture Page Screenshot
    Log Source

Move to HomeScreen
    # Log To Console  Moving to HomeScreen
    ${nowActivity} =   Get Activity
    Run Keyword If  '${nowActivity}' == '${HomeActivity}'    Log To Console   We Already at HomeScreen
    Run Keyword Unless  '${nowActivity}' == '${HomeActivity}'    Get Back to HomeScreen

Get Back to HomeScreen
    Log To Console   Get Move to HomeScreen
    Go Back
    Move to HomeScreen

Back to home
    Log To Console    \n Back to home
    Sleep    1s
    ${isAtHome}    Run Keyword And Return Status     Page Should Contain Element    ${footer home}
    Run keyword if    ${isAtHome} == True          Click Element    ${footer home}
    Run keyword if    ${isAtHome} == False         Go Back
    Run keyword if    ${isAtHome} == False         Back to home

Scroll to love button
    [Documentation]   Scroll down recursive untill element found
    ${isLoveable}    Run Keyword And Return Status     Page Should Contain Element    ${icon unlove}
    # Buat cek apakah ketemu icon unlove
    # Log To Console    isLovable = ${isLoveable}
    Run keyword if    ${isLoveable} == True     Click Element    ${icon unlove}
    Run keyword if    ${isLoveable} == True     Log To Console    \n \t I Love It
    Run keyword if    ${isLoveable} == False    Swipe    222    650    222    300   200
    Run keyword if    ${isLoveable} == False    Scroll to love button
