*** Settings ***
Library        AppiumLibrary

*** Keywords ***
Open flight application
    Open Application        remote_url=http://127.0.0.1:4723       
    ...    platformName=Android        
    ...    platformVersion=10.0  
    ...    deviceName=emulator-5554      
    ...    appPackage=com.example.myapplication        
    ...    appActivity=com.example.myapplication.MainActivity        
    ...    automationName=uiautomator2

Close flight application
    Close Application