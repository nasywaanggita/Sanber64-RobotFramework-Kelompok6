*** Settings ***
Library    AppiumLibrary
Variables       ../LoginScreen/login-screen-locator.yaml
Variables    ../LoginScreen/data-login.yaml

*** Variables ***

*** Keywords ***
Verify username and password field appears
    Wait Until Element Is Visible        locator=${username_input}
    Wait Until Element Is Visible    locator=${password_input}

Input Username
    [Arguments]    ${username}
    Input Text    locator=${username_input}    text=${username}

Input Password
    [Arguments]    ${password}
    Input Text    locator=${password_input}    text=${password}

Click Sign in Buttton
    Click Element    locator=${sign_button}

Login
    [Arguments]    ${username}=${valid_username}    ${password}=${valid_password}
    Verify username and password field appears
    Input Username    username=${username}
    Input Password    password=${password}
    Click Sign in Buttton

Verify if login failed
    Wait Until Page Contains    text=Invalid username/password

Verify if login succesful
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]