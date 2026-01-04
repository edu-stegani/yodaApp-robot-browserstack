*** Settings ***
Resource    ../resources/base.robot

*** Test Cases ***
Deve logar com sucesso
    Get Started
    Navigate to     Formulários
    Go to     Login    Olá Padawan, vamos testar o login?
    
    Input Text    id=com.qaxperience.yodapp:id/etEmail    text=yoda@qax.com
    Input Text    id=com.qaxperience.yodapp:id/etPassword    text=jedi
    Click Element    id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    text=Boas vindas, logado você está.   


Não deve logar com credenciais incorretas
    Get Started
    Navigate to     Formulários
    Go to     Login    Olá Padawan, vamos testar o login?
    
    Input Text    id=com.qaxperience.yodapp:id/etEmail    text=yoda@qax.com
    Input Text    id=com.qaxperience.yodapp:id/etPassword    text=senhaincorreta
    Click Element    id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    text=Oops! Credenciais incorretas.   
