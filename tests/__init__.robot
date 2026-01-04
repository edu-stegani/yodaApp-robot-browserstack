*** Settings ***
Resource   ../resources/base.robot

Suite Setup    Send App To Browserstack
Test Setup    Open yodapp Application
Test Teardown    Run Keywords
...    Update Test Case Status in BrowserStack
...    Finish Test

*** Keywords ***
Send App To Browserstack
    IF    '${EMULATOR}' == 'browserstack'
        ${BS_APP}=    Upload Application to Browserstack
        ...    app_name=yodapp-beta
        ...    app_path=${EXECDIR}/app/yodapp-beta.apk
        ...    custom_id=yodapp-beta
        Set Suite Variable    ${BS_APP}
    END

    # BLOCO IF ANTIGO
    # IF    '${EMULATOR}' == 'browserstack'
    #     Upload Application to Browserstack
    #     ...    app_name=yodapp-beta.apk
    #     ...    app_path=${EXECDIR}/app/yodapp-beta.apk
    #     ...    app_url=None
    #     ...    custom_id=yodapp-beta
    # END
    
