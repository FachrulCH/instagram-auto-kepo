*** Keywords ***
person name is "${username}"
    Console Log      Setting user name is  "${username}"
    Set Suite Variable      ${ig_username}     ${username}
    Sleep   5s