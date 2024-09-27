*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/DeleteTaskKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://app.todoist.com/app/inbox
${email}  #Ingresarcorreo
${pwd}    #Ingresarpasword

*** Test Cases ***

DeleteTask
    Set Selenium Speed   0.2s
    Set Selenium Implicit Wait    20
    Open My Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${email}
    Enter password     ${pwd}
    Click SignIn
    Select Task
    Click Task
    Click DeleteCard
    Click ConfirmDeleteCard

