*** Test Cases ***
Check Sum Calculation
    ${sum}=     Calculate Sum Of Two Numbers    3   5
    Log    The result is: ${sum}



*** Keywords ***
Calculate Sum Of Two Numbers
    [Arguments]    ${a}     ${b}
    ${result}=  Evaluate    ${a}+${b}
    [Return]        ${result}

