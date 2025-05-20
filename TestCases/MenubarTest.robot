*** Settings ***
Documentation    Menubar Test Case
Library    SeleniumLibrary
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/GenericResource.robot
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/MenubarResource.robot
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/LoginResource.robot
Test Setup    Open the Browser with URL
Test Teardown    Close Browser

*** Test Cases ***
Validate Menubar With Standard User
    ${username}=    Set Variable    standard_user
    ${password}=    Set Variable    secret_sauce
    LoginResource.Fill the Login form    ${username}    ${password}

# [Tags]    AllItem
Verify the All Item element functionality
    LoginResource.Fill the Login form    ${username}    ${password}
    MenubarResource.Click an item and Click on the All Items
    MenubarResource.Verify the the ALL Items have brought to the homepage

# [Tags]    About
Verify the About page functionality
    LoginResource.Fill the Login form    ${username}    ${password}
    MenubarResource.Click on the About in the menubar
    MenubarResource.Verify the About page
    MenubarResource.Navigate Back to the Homepage and Verify

# [Tags]    Logout
Verify the Logout functionality
    LoginResource.Fill the Login form    ${username}    ${password}
    MenubarResource.Click on Logout in the menubar
    MenubarResource.Verify the Logout is successful

# [Tags]    Reset_App_State
Verify the Reset App State functionality
    LoginResource.Fill the Login form    ${username}    ${password}
    MenubarResource.Click on the Reset App State in the menubar
    # MenubarResource.Verify the Reset App State is successful
