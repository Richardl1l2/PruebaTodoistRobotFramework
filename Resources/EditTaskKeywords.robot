*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LoginLocators.py
Variables    ../PageObjects/EditTaskLocators.py

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

Click Task
    Click Element    ${select_edit}
 
Click Fields
    Click Element    ${Select_fields}

Enter NewComment
    [Arguments]    ${neweditcomment}
    Input Text    ${txt_newcommentedit}    ${neweditcomment}

Click SaveTask
    Click Element    ${btn_save}

Click ExitSave
    Click Button    ${btn_exitsave}







