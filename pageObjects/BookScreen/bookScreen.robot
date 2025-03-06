*** Settings ***
Resource                ../base/base.robot
Resource                ../homeScreen/homeScreen.robot
Variables               ../BookScreen/bookscreen_locator.yaml

*** Variables ***



*** Keywords ***
Tap Button Book
    Click Element    ${buttonbook_homescreen_bookscreen}

Verify Book Appears
     Wait Until Element Is Visible    ${fromcity_bookscreen}
     Wait Until Element Is Visible    ${tocity_bookscreen}
     Wait Until Element Is Visible    ${classflight_bookscreen}

Verify One Way
    Click Element    ${onewaylight_bookscreen}

Input From City Flight    
    Click Element    ${choose_fromcity_bookscreen}
    Click Element    ${data_fromcity_bookscreen}

Input To City Flight
    Click Element    ${choose_tocity_bookscreen}
    Click Element    ${data_tocity_bookscreen}

Input Class Flight
    Click Element    ${choose_class_bookscreen}
    Click Element    ${data_class_bookscreen}

Tap Book On Book Screen
    Click Element    ${buttonbook_bookscreen}

