*** Keywords ***
I should see person profile
    Console Log      I see this person ${ig_username}

I follow him
    Run keyword If        '${current_follow_text}' == 'Following'     Console Log      Already followed ${ig_username}
    Run keyword Unless    '${current_follow_text}' == 'Following'     Click Element    ${Profile - btn following status}
