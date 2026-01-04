*** Settings ***
Resource    ../resources/base.robot

*** Test Cases ***
Clique Simples Test
    Get Started
    Navigate to     Clique em Botões    
    Go to     Clique simples    Botão clique simples

    Click Text    CLIQUE SIMPLES
    Wait Until Page Contains    Isso é um clique simples    15s


Clique Longo Test
    Get Started
    Navigate to     Clique em Botões    
    Go to     Clique longo    Botão clique longo

    # Tap With Positions    1000ms    ${580, 600}

    ${locator}    Set Variable    id=com.qaxperience.yodapp:id/long_click
    ${position}   Get Element Location    ${locator}

    Tap With Positions    1000ms    ${${position}[x], ${position}[y]}
    Wait Until Page Contains    Isso é um clique longo    15s
