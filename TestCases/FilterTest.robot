*** Settings ***
Documentation    Menubar Test Case
Library    SeleniumLibrary
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/GenericResource.robot
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/FilterResource.robot
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/LoginResource.robot
Test Setup    Open the Browser with URL
Test Teardown    Close Browser


*** Test Cases ***
Validate Filter With Standard User
    ${username}=    Set Variable    standard_user
    ${password}=    Set Variable    secret_sauce
    LoginResource.Fill the Login form    ${username}    ${password}
    FilterResource.Click on the Filter for z-a
    FilterResource.Verify items in Homepage after the filter is applied

Verify for the Low to high  
    LoginResource.Fill the Login form    ${username}    ${password}
    FilterResource.Click on the Filter for Low to High
    FilterResource.Verify items in Homepage after the filter is applied for low to high

Verify for the High to low
    LoginResource.Fill the Login form    ${username}    ${password}
    FilterResource.Click on the Filter for High to Low
    FilterResource.Verify items in Homepage after the filter is applied for high to low
