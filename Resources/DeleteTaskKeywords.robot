*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LoginLocators.py
Variables    ../PageObjects/DeleteLocators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Click SignIn
    Click Element    ${btn_signIn}

Enter UserName
    [Arguments]    ${email}
    Input Text    ${txt_loginEmail}    ${email}

Enter password
    [Arguments]    ${password}
    Input Text    ${txt_loginPassword}    ${password}

Select Task
    Click Element    ${btn_selectTask}

Click Task
    Click Button    ${select_edit}

Click DeleteCard
    Click Element    ${btn_delete}

Click ConfirmDeleteCard
    Click Button    ${btn_confdelete}






