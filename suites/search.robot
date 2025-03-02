*** Settings ***
Resource         ../pageObjects/homeScreen/homeScreen.robot
Resource         ../pageObjects/loginScreen/loginScreen.robot
Resource         ../pageObjects/searchScreen/searchScreen.robot    

Test Setup       Run Keywords    
...              Open Flight Application 
...              Login With Valid Credentials
Test Teardown    Close Flight Application

*** Variables ***
${VALID_FLIGHT_NUMBER}               DA935

*** Test Cases ***
User should be able to Search flight Number with valid credentials
    Tap Search Button On Home Screen
    Verify Search Appears
    Input User Flight Number On Search Screen    ${VALID_FLIGHT_NUMBER}
    Tap Search Button On Search Screen
    Verify user's flight number is displayed        flight_number=DA 935


User shouldn't able to search flight Number with invalid flight number
    Tap Search Button On Home Screen
    Verify Search Appears
    Input User Flight Number On Search Screen    flight_number=DA999
    Tap Search Button On Search Screen
    Verify search error message is displayed    expectedMessage=Please enter valid Flight Number

User should able to access mail 
    Tap Search Button On Home Screen
    Verify Search Appears
    Tap Mail button on Search Screen
    Verify mail Appears
    
