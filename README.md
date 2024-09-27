 # Proyecto castor :nerd_face:

En el siguiente archivo encontrarán toda la información sobre el Proyecto Castor Automation QA.

- Instalación
- Ejecución
- Estructura
  
## Precondición

Se debe resgistrar en la plataforma https://app.todoist.com/auth/login y agregar el correo y contraseña en los campos de cada TestCase
```bash
${email}  #Ingresarcorreo
${pwd}    #Ingresarpasword
```

## Instalación

Para instalar Robot Framework, sigue estos pasos:

 Instala Python:

- Asegúrate de tener Python instalado. Puedes descargarlo desde python.org.
- Verifica la instalación con:
```bash
 python --version
```
 Instala pip:
- Pip generalmente viene con Python. Verifica su instalación:
```bash
pip --version
```
 Instala Robot Framework:
 - Usa pip para instalar:
```bash
pip install robotframework
```
 Verifica la Instalación:
 - Comprueba que Robot Framework esté instalado:
 ```bash
robot --version
```
 Instala SeleniumLibrary (opcional, si necesitas automatización web):
 - Instala la biblioteca de Selenium:
 ```bash
pip install robotframework-seleniumlibrary
```
  Instalar Robot Framework:
  ```bash
pip install robotframework
``` 
 Instalar comando para ejecutar pruebas: 
   ```bash
pip install robotframework-retryfailed
``` 

## Ejecutar Test

Para ejecutar los tests, sigue los siguientes comandos:

```bash
  robot -d Output --listener RetryFailed:1 .\TestCases
```
## Estructura
```bash
  Project/
│
├── PageObject/
│   ├── Examplelocators.py
│   ├── Examplelocators.py
│   └── Examplelocators.py
|   └── Examplelocators.py
│
├── Resources/
│   ├── Examplekeywords.robot
│   └── Examplekeywords.robot
│   └── Examplekeywords.robot
└── TestCases/
    ├── Exampletest.robot
    ├── Exampletest.robot
    └── Exampletest.robot

```

  Explicación
- PageObject: Contiene clases que representan cada página de la aplicación. Cada clase maneja las interacciones y elementos de una página específica.

- Resources: Incluye archivos de soporte, como localizadores y constantes que se usan en las clases de página.

- TestCases: Contiene los scripts de prueba que interactúan con las páginas a través de las clases en el directorio PageObject. Aquí es donde defines los flujos de prueba.

