*** Settings ***
Resource                ../base/base.robot
Resource                ../homeScreen/homeScreen.robot
Variables               loginscreen_locators.yaml

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${email_input_loginscreen}
    Wait Until Element Is Visible    ${password_input_loginscreen}
    Wait Until Element Is Visible    ${signIn_button_loginscreen}

Input User Email On Login Screen
    [Arguments]   ${email}
    Input Text    ${email_input_loginscreen}    ${email}

Input User Password On Login Screen
    [Arguments]   ${password}
    Input Text    ${password_input_loginscreen}    ${password}

Tap Sign In Button On Login Screen
    Click Element    ${signIn_button_loginscreen}

Login With Valid Credentials
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Verify Home Screen Appears
    Tap Sign In Button On Home Screen
    Verify Login Appears
    Input User Email On Login Screen     ${email}
    Input User Password On Login Screen  ${password}
    Tap Sign In Button On Login Screen
