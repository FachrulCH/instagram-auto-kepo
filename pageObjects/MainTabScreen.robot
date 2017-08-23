*** Settings ***
Library           AppiumLibrary  timeout=5  run_on_failure=On automation failure
Library           String

*** Variables ***
${i}
${btn Search}           xpath=//com.instagram.base.activity.tabactivity.IgTabWidget/android.widget.FrameLayout[@content-desc='Search and Explore']
${txt Search}           id=action_bar_search_edit_text
${txt Total post}       id=row_profile_header_textview_photos_count
${btn view as list}     id=layout_button_group_view_switcher_button_list


*** Keywords ***
person target is "${person}"
    Log To Console    \t Searching "${person}"
    Sleep    3s
    Click Element    ${btn Search}
    Click Element    ${txt Search}
    Input Text    ${txt Search}    ${person}
    Click Text    ${person}
    Capture Page Screenshot

I see profile
    has post > 0


has post > 0
    ${count post} =   Get Text    ${txt Total post}
    ${count} =        Convert To Number    ${count post}
    Should Be True    (${count} > 0)
    Click Element    ${btn view as list}
    Capture Page Screenshot

I give "${X}" times love
    ${xTimes} =        Convert To Number    ${X}
    :FOR    ${i}    IN RANGE    0    ${xTimes}
    \    Log To Console    looping ke ${i}
    \    Swipe    222    650    222    200   500
    \    common.Scroll to love button
    \    ${i}    Set Variable    ${i}+1
