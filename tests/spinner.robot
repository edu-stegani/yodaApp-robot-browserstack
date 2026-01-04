*** Settings ***
Resource    ../resources/base.robot

*** Test Cases ***
Selecionar opção de spinner Padawan
    Get Started
    Navigate to     Formulários    
    Go to     Cadastro    Crie sua conta.

    Select level    Padawan


Selecionar opção de spinner Jedi
    Get Started
    Navigate to     Formulários    
    Go to     Cadastro    Crie sua conta.

    Select level    Jedi


Selecionar opção de spinner Sith
    Get Started
    Navigate to     Formulários    
    Go to     Cadastro    Crie sua conta.

    Select level    Sith


Selecionar opção de spinner Outros
    Get Started
    Navigate to     Formulários    
    Go to     Cadastro    Crie sua conta.

    Select level    Outros


*** Keywords ***    
Select level 
    [Arguments]    ${level}
    Click Element    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text    text=${level}