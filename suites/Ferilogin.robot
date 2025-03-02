*** Settings ***
Resource     ../pageObjects/base/base.robot
Resource    ../pageObjects/homeScreen/FeriHomeScreen.robot
Resource    ../pageObjects/loginScreen/FeriLoginScreen.robot

Test Setup    Open flight application
Test Teardown    Close flight application

*** Keywords ***
 

*** Test Cases ***
Login with valid Credential
    Verify Home Screen Appears
    Click Sign In Home Screen
    Verify username and password field appears
    Input Username    username=${valid_username}
    Input Password    password=${valid_password}
    Click Sign in Buttton
    Verify if login succesful
    
Login with Invalid Password
    Verify Home Screen Appears
    Click Sign In Home Screen
    Verify username and password field appears
    Input Username        username=${valid_username}
    Input Password    password=${invalid_password}
    Click Sign in Buttton
    Verify if login failed

Login with Invalid username
    Verify Home Screen Appears
    Click Sign In Home Screen
    Verify username and password field appears
    Input Username        username=${invalid_username}
    Input Password    password=${valid_password}
    Click Sign in Buttton
    Verify if login failed

login with Invalid Credentials
    Verify Home Screen Appears
    Click Sign In Home Screen
    Verify username and password field appears
    Input Username        username=${invalid_username}
    Input Password    password=${invalid_password}
    Click Sign in Buttton
    Verify if login failed

Login without input any credentials
    Verify Home Screen Appears
    Click Sign In Home Screen
    Verify username and password field appears
    Click Sign in Buttton
    Verify if login failed

Login without input username
    Verify Home Screen Appears
    Click Sign In Home Screen
    Verify username and password field appears
    Input Password    password=${valid_password}
    Click Sign in Buttton
    Verify if login failed

Login without input password
    Verify Home Screen Appears
    Click Sign In Home Screen
    Verify username and password field appears
    Input Username        username=${valid_username}
    Click Sign in Buttton
    Verify if login failed
