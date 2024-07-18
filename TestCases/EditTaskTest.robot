*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/EditTaskKeywords.robot
Library    String
*** Variables ***
${Browser}    chrome
${SiteUrl}    https://app.todoist.com/app/inbox
${email}  richard.18.1994@hotmail.com
${pwd}    123456789rrrR*
${newcomment}    Comentarinouevoparaprueba

*** Test Cases ***

EditTask
    Set Selenium Speed   0.2s
    Set Selenium Implicit Wait    20
    Open My Browser    ${SiteUrl}    ${Browser}
    ${datarandom} =    Generate Random String    5    [LOWER]
    ${resultado}=    Catenate    SEPARATOR=     ${datarandom}    ${newcomment}
    Enter UserName    ${email}
    Enter password     ${pwd}
    Click SignIn
    Click Task
    Click Fields
    Enter NewComment    ${resultado}
    Click SaveTask
    Click ExitSave

