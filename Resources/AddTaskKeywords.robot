*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LoginLocators.py        #Ubicacion de los selectores 
Variables    ../PageObjects/AddTaskLocators.py      #Ubicacion de los selectores

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}            #Argumentos de los elementos en los campos
    Open Browser    ${SiteUrl}    ${Browser}           #Ejecuta el navegador y el link de la pagina a probar
    Maximize Browser Window                            #Aumenta el tamaño de la ventana al 100%

Click SignIn
    Click Element    ${btn_signIn}                    #Ejecuta la accion click sobre el selector

Enter UserName
    [Arguments]    ${email}                            #Argumentos de los elementos en los campos
    Input Text    ${txt_loginEmail}    ${email}        #Ingresa los datos del correo del usuario

Enter password
    [Arguments]    ${password}                            #Argumentos de los elementos en los campos
    Input Text    ${txt_loginPassword}    ${password}        #Ingresa los datos de contraseña del usuario

Click Addtask
    Click Button    ${btn_addTarget}            #Ejecuta la accion click sobre el selector

Enter TitleTask
    [Arguments]    ${titletarget}                            #Argumentos de los elementos en los campos
    Input Text    ${txt_titleTarget}    ${titleTarget}         #Ingresa los datos de titulo en la tarea



Click AddTitle
    Click Button    ${btn_addTitle}            #Ejecuta la accion click sobre el selector



