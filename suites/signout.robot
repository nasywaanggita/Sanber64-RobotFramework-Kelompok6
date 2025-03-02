*** Settings ***
Resource         ../pageObjects/homeScreen/homeScreen.robot
Resource         ../pageObjects/loginScreen/loginScreen.robot
Resource         ../pageObjects/signoutScreen/signoutScreen.robot    

Test Setup       Run Keywords    
...              Open Flight Application 
...              Login With Valid Credentials
Test Teardown    Close Flight Application

*** Variables ***


*** Test Cases ***
User should be able to Sign Out
    Verify Home Screen Appears
    Click Sign Out Button
    Verify Sign Out Success


User should not be able to Sign Out
    Verify Home Screen Appears
    Click Sign Out Button
    Verify Sign Out Failed


