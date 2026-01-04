*** Settings ***
Resource    ../resources/base.robot

*** Test Cases ***
Fazer um swipe e remover o darth vader
    Get Started
    Navigate to     Star Wars    
    Go to     Lista    Darth Vader

    ${positions}    Get Element Location    xpath=android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}    Set Variable    ${positions}[x]
    ${start_y}    Set Variable    ${positions}[y]    
    ${end_x}      Evaluate        ${positions}[x] - 650
    ${end_y}      Set Variable    ${positions}[y]

    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}
    Click Element    id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    text=Darth Vader
