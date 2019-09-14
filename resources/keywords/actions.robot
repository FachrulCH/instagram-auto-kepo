*** Keywords ***
I search person name
    Console Log      \t I will searching ${ig_username}
    Click Element    ${Main menu explore}
    Click Element    ${Explorer input search}
    Sleep    3s
    Input Text       ${Explorer input search}       ${ig_username}
    Sleep   2s
    Tap    ${Explorer list result}
    Debug