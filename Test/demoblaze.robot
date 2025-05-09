*** Settings ***
Library             SeleniumLibrary

Test Teardown       Close browser


*** Variables ***
${URL}                      https://www.demoblaze.com/
${btn_login}                id=login2
${input_username}           id=loginusername
${input_password}           id=loginpassword
${btn_login_in_form}        xpath=//button[text()='Log in']
${txt_wellcome_admin}       xpath=//a[text()='Welcome admin']
${timeout}                  10s
${username_data}                 admin
${password_data}                 admin
${web_browser}              chrome

*** Test Cases ***
Login_Demoblaze
    [Tags]    login
#    Login Demoblaze on ${web_browser} with ${username_data} and ${password_data}
    Login Demoblaze on chrome with admin and admin

*** Keywords ***
Open Demoblaze
    [Arguments]     ${browser}
    Open browser    ${URL}    ${browser}

Fill Login Form
    [Arguments]    ${username}      ${password}
    Common - Click Element    ${btn_login}    ${timeout}
    Common - Input Text    ${input_username}    ${username}    ${timeout}
    Common - Input Text    ${input_password}    ${password}    ${timeout}

Submit Login Form
    Common - Click Element    ${btn_login_in_form}    ${timeout}

Verify Login Success
    Wait until element is visible    ${txt_wellcome_admin}    ${timeout}

Login Demoblaze on ${browser} with ${username} and ${password}
    Open Demoblaze          ${browser}
    Fill Login Form         ${username}     ${password}
    Submit Login Form
    Verify Login Success

Common - Click Element
    [Arguments]    ${element}    ${timeout}
    Wait until element is visible    ${element}    ${timeout}
    Click element    ${element}

Common - Input Text
    [Arguments]    ${element}    ${text}    ${timeout}
    Wait until element is visible    ${element}    ${timeout}
    Clear element text    ${element}
    Input text    ${element}    ${text}
