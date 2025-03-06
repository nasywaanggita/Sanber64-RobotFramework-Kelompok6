*** Settings ***
Resource         ../pageObjects/homeScreen/homeScreen.robot
Resource         ../pageObjects/loginScreen/loginScreen.robot
Resource         ../pageObjects/bookScreen/bookScreen.robot

Test Setup       Run Keywords    
...              Open Flight Application 
...              Login With Valid Credentials
Test Teardown    Close Flight Application

*** Variables ***


*** Test Cases ***
User open book screen
    Verify Home Screen Appears
    Tap Button Book
    Verify Book Appears
    Verify One Way
    Input From City Flight
    Input To City Flight
    Input Class Flight
    Tap Book On Book Screen



