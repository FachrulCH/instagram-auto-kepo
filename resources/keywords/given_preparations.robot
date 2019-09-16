*** Keywords ***
person name is "${username}"
    Console Log                         Setting user name is "${username}"
    Set Suite Variable                  ${ig_username}     ${username}
    Wait Until Element Is Visible       ${Main - menu explore}        30s