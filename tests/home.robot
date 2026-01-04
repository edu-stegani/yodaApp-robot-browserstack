*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Abrir App e fazer validações na tela inicial
    Open Application    http://localhost:4723   
    ...    platformName=Android    
    ...    deviceName=Android Emulator
    ...    automationName=UIAutomator2    
    ...    app=${EXECDIR}/app/yodapp-beta.apk
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true
    ...    uiautomator2ServerLaunchTimeout=120000
    ...    uiautomator2ServerInstallTimeout=120000    
    ...    adbExecTimeout=120000    
    ...    newCommandTimeout=60000
    
    Wait Until Page Contains    Yodapp    10s
    Wait Until Page Contains    Mobile Training    10s
    Wait Until Page Contains    by Papito    10s
    Close Application