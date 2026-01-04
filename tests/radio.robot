*** Settings ***
Resource    ../resources/base.robot

*** Test Cases ***

Clicar no radio da sua linguagem preferida
    Get Started
    Navigate to     Ckeck e Radio    
    Go to     Botões de radio    Escolha sua linguagem preferida

    Click Element    xpath=//android.widget.RadioButton[contains(@text, "Javascript")]
    Sleep    2
