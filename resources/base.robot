*** Settings ***
Library    AppiumLibrary
Library    BrowserstackLibrary    username=${BROWSERSTACK_USERNAME}    access_key=${BROWSERSTACK_ACCESS_KEY}


*** Variables ***
${EMULATOR}    local    # Options: local | browserstack

${BROWSERSTACK_USERNAME}    YOUR_USERNAME_BROWSERSTACK
${BROWSERSTACK_ACCESS_KEY}    **********************

${BSTACK_OPTIONS}    appiumVersion=3.1.2

# ${REMOTE_URL}    https://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub

# &{BROWSERSTACK_OPTIONS}
# ...    project=yodapp-robot
# ...    build=yodapp-mobile
# ...    sessionName=${TEST_NAME}
# ...    appiumVersion=2.0.1
# ...    debug=true
# ...    networkLogs=true
# ...    idleTimeout=60

*** Keywords ***
Open yodapp Application
    IF    "${EMULATOR}" == "local"
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
         
    ELSE IF   "${EMULATOR}" == "browserstack"
        Open Application In Browserstack
        ...      automationName=UIAutomator2
        ...      platformName=Android
        ...      deviceName=Google Pixel 7 Pro
        ...      project=yodapp-robot
        ...      build=yodapp
        ...      name=${TEST_NAME}
        ...      bstack:options=${BSTACK_OPTIONS}
        ...      disableIdLocatorAutocompletion=${True}
        ...      browserstack.idleTimeout=60
        ...      interactiveDebugging=${True}
    END

# Open yodapp Application
#     IF    "${EMULATOR}" == "local"
#         Open Application    http://localhost:4723
#         ...    platformName=Android
#         ...    deviceName=Android Emulator
#         ...    automationName=UIAutomator2
#         ...    app=${EXECDIR}/app/yodapp-beta.apk
#         ...    autoGrantPermissions=true

#     ELSE IF    "${EMULATOR}" == "browserstack"
#         Open Application In Browserstack
#         ...    automationName=UIAutomator2
#         ...    platformName=Android
#         ...    deviceName=Google Pixel 7 Pro
#         ...    platformVersion=13.0
#         # ...    app=bs://yodapp-beta
#         # ...    app=bs:${BS_APP}
#         ...    bs://7460ae1133eacfe203f80ea995cd5f0c31749328
#         ...    bstack:options=${BROWSERSTACK_OPTIONS}
#     END



Get Started
    Wait Until Page Contains    QAX    15s
    Click Text     QAX

Navigate to
    [Arguments]    ${menu-item}

    ${menuAmburguer}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait until element is visible    ${menuAmburguer}    15s
    Click Element    ${menuAmburguer}

    ${item-menu}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${menu-item}"]
    Wait until element is visible    ${item-menu}    15s
    Click Element    ${item-menu}

Go to 
    [Arguments]    ${item}    ${checkpoint}
    Wait Until Page Contains    ${item}    15s
    Click Text     ${item}
    Wait Until Page Contains    ${checkpoint}    15s

Finish Test
    Close Application
    Capture Page Screenshot