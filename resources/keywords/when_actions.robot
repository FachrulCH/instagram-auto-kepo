*** Keywords ***
I search person name
    Console Log                         I will searching ${ig_username}
    Click Element                       ${Main - menu explore}
    Sleep    3s
    Click Element                       ${Explorer - input search}
    Sleep    1s
    Input Text                          ${Explorer - input search}       ${ig_username}
    Sleep   1s
    Tap                                 ${Explorer - list result}
    Wait Until Element Is Visible       ${Profile - btn following status}       30s
    ${current_follow_text}  Get Element Attribute    ${Profile - btn following status}      text
    Set Suite Variable      ${current_follow_text}      ${current_follow_text}