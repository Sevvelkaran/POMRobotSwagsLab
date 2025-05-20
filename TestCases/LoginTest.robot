*** Settings ***
Documentation       Login Test Case 
Library             SeleniumLibrary
Resource            /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/GenericResource.robot
Resource            /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/LoginResource.robot
Library             DataDriver    file=/Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/Logindata.csv    encoding=utf_8    dialect=unix
Test Setup          Open the Browser with URL
Test Teardown       Close Browser
Test Template       Validate Login Scenarios

*** Variables ***
${username}    
${password}    
${expected}

*** Test Cases ***
Validate the Loginpage    ${username}    ${password}    ${expected}

*** Keywords ***
[Tags]    Login Test
Validate Login Scenarios
    [Arguments]    ${username}    ${password}    ${expected}

    LoginResource.Fill the Login form    ${username}    ${password}
    
    Run Keyword If    '${expected}' == 'Pass'      LoginResource.Verify the Homepage  
    Run Keyword If    '${expected}' == 'Fail'      LoginResource.Verify the error message is displayed for locked_out_user    
    Run Keyword If    '${expected}' == 'BlankU'    LoginResource.Verify the error message is displayed for blank username     
    Run Keyword If    '${expected}' == 'BlankP'    LoginResource.Verify the error message is displayed for blank password     
    Run Keyword If    '${expected}' == 'Invalid'   LoginResource.Verify the error message is displayed for invalid credentials   