*** Settings ***
Resource                ../base/base.robot
Resource                ../homeScreen/homeScreen.robot
Variables               searchscreen_locators.yaml

*** Variables ***



*** Keywords ***
Verify Search Appears
    Wait Until Element Is Visible    ${enter_flight_number_text_searchscreen}
    Wait Until Element Is Visible    ${flight_number_input_searchscreen}
    Wait Until Element Is Visible    ${search_button_searchscreen}
    Wait Until Element Is Visible    ${mail_button_searchscreen}

Input User Flight Number On Search Screen
    [Arguments]   ${flight_number}
    Input Text    ${flight_number_input_searchscreen}    ${flight_number}

Tap Search Button On Search Screen
    Click Element    ${search_button_searchscreen}

Verify user's flight number is displayed
    [Arguments]   ${flight_number}
    Wait Until Element Is Visible     ${from_and_destination_text_searchscreen}
    Wait Until Element Is Visible     ${flight_number_booked_text_searchscreen}
    Element Text Should Be            ${flight_number_booked_text_searchscreen}    ${flight_number}

Verify search error message is displayed
    [Arguments]        ${expectedMessage}
    Wait Until Page Contains    ${expectedMessage}

Tap Mail button on Search Screen
    Wait Until Element Is Visible    ${mail_button_searchscreen}
    Click Element    ${mail_button_searchscreen}


Verify mail Appears
    Wait Until Page Does Not Contain Element    ${enter_flight_number_text_searchscreen}
