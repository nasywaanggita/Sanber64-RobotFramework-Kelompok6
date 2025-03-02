*** Settings ***
Resource                ../base/base.robot
Resource                ../homeScreen/homeScreen.robot
Variables               signout_locators.yaml

*** Variables ***



*** Keywords ***

Click Sign Out Button
    Click Element    locator=${signout_button_homescreen}

Verify Sign Out Success
    Wait Until Element Is Visible    locator=${signIn_button_homescreen}

Verify Sign Out Failed
    Wait Until Page Does Not Contain    text=${signIn_button_homescreen}

