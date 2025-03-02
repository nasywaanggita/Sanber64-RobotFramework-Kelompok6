*** Settings ***
Resource                ../base/base.robot
Variables               homescreen_locators.yaml

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible      ${logo_homescreen}

Tap Sign In Button On Home Screen
    Wait Until Element Is Visible      ${signIn_button_homescreen}
    Click Element                      ${signIn_button_homescreen}

Verify User Is Logged In
    Wait Until Element Is Visible      ${userName_text_homescreen}

Tap Search Button On Home Screen
    Wait Until Element Is Visible      ${search_button_homescreen}
    Click Element                      ${search_button_homescreen}
