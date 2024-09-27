*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/AddTaskKeywords.robot             #Ubicacion del keywords 
Library    String                                          #Se usa la Libreria para generar datos aleatorios
*** Variables ***
${Browser}    chrome
${SiteUrl}    https://app.todoist.com/auth/login           #Datos usados para el login
${email}  #Ingresarcorreo
${pwd}    #Ingresarpasword
${titleTarget}    pruebaqa                                  #Se agrega el string a los datos aleatorios 
*** Test Cases ***



AddTask 
    Set Selenium Speed   0.2s                            #Ejecuta toda la prueba a esa velocidad 0.2s
    Set Selenium Implicit Wait    20                     #En caso de no encontrar un elemento espera 20 segundos   
    Open My Browser    ${SiteUrl}    ${Browser}          #Usa el nevagor de la variable y el link de la pagina a probar
    ${datarandom} =    Generate Random String    5    [LOWER]    #Genera la variable con datos aleatorios de tipo String con 5 letras
    ${resultado}=    Catenate    SEPARATOR=     ${datarandom}    ${titleTarget}    #Concatena el string aleatorio con la variable titleTarget 
    Enter UserName    ${email}                    #Se ingresa email (login)
    Enter password     ${pwd}                     #Se ingresa contrasena (login)
    Click SignIn                                  #Da click sobre el boton ingresar en el login
    Click Addtask                                 #Da click sobre la tarea     
    Enter TitleTask    ${resultado}               #Ingresa el titulo de la tarea
    Click AddTitle                                #Guarda el titulo de la tarea

AddTaskEmpty
    Set Selenium Speed   0.2s
    Set Selenium Implicit Wait    20
    Open My Browser    ${SiteUrl}    ${Browser}
    ${datarandom} =    Generate Random String    0    [LOWER]   #generamos 0 datos para marcar como fallida la prueba al tratar de ingresar datos vacios
    Enter UserName    ${email}
    Enter password     ${pwd}
    Click SignIn
    Click Addtask
    Enter TitleTask    ${datarandom}
    Should Not Be Empty   ${datarandom}    #Valida que no se encuentre vacio
    Click AddTitle


