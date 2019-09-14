*** Settings ***
Library           AppiumLibrary  timeout=5  run_on_failure=On automation failure
Resource          ../resources/common.robot
Variables         ../resources/data.yaml

Force Tags        demo-test
Suite Setup       Open app
Suite Teardown    Close app
Test Setup        Back to home

*** Variables ***
${btn Search}           xpath=//android.widget.FrameLayout[@content-desc='Search and Explore']
${btn view as list}     id=layout_button_group_view_switcher_button_list
${btn Comment}          id=row_feed_button_comment
${btn sendComment}      id=layout_comment_thread_button_send
${txt Comment}          id=layout_comment_thread_edittext
${txt Search}           id=action_bar_search_edit_text
${target person}        fachrulch
${img 1st foto}         xpath=//android.widget.LinearLayout[@index=3]/android.widget.ImageView[@index=0]

*** Test Cases ***
Test comment specific people
    Log To Console    \n \t Test comment specific people
    Sleep    3s
    Click Element     ${btn Search}
    Click Element     ${txt Search}
    Input Value       ${txt Search}    ${target person}
    Click Text        ${target person}
    Wait Until Element Is Visible    ${btn view as list}    10s
    Click Element     ${btn view as list}
    Swipe             222    650    222    200   400
    Click Element     ${btn Comment}
    Input Value       ${txt Comment}    Appium beraksi
    Sleep    3s
    # Click Element     ${btn sendComment}

Test comment explore refine
    Log To Console    \n \t Test comment explore refine
    Click Element     ${btn Search}
    Sleep    3s
    Capture Page Screenshot
    Click Element     ${img 1st foto}
    Capture Page Screenshot
    Log To Console    \n \t comment: ${comments}
