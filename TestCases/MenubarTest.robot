*** Settings ***
Documentation    Menubar Test Case
Library    SeleniumLibrary
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/GenericResource.robot
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/MenubarResource.robot
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/LoginResource.robot
Test Setup    Open the Browser with URL
Test Template    Validate Menubar Scenarios

*** Test Cases ***
Validate Menubar Scenarios        ${username}         ${password}           

*** Keywords ***

Validate Menubar Scenarios
    [Arguments]    ${username}    ${password}    
    LoginResource.Fill the Login form    ${username}    ${password}
    MenubarResource.Click an item and Click on the All Items

