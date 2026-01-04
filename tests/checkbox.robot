*** Settings ***
Resource    ../resources/base.robot

*** Test Cases ***
Marcar checkbox das techs que usam Appium
    
    Get Started
    Navigate to     Ckeck e Radio    
    Go to     Checkbox    Marque as techs que usam Appium

    @{techs}    Create List    Ruby    Python    Java    JavaScript    C#    Robot Framework
    FOR    ${tech}    IN    @{techs}
        Log    ${tech}
        Click Element    xpath=//android.widget.CheckBox[contains(@text, "${tech}")]
        Sleep    3
    END
    

