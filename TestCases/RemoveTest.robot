*** Settings ***
Documentation   Remove Test Case for the Remove Functionality
Library    SeleniumLibrary
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/GenericResource.robot
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/RemoveResource.robot
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/LoginResource.robot
Resource    /Users/sevvelkaranpalanivetrivel/Desktop/Expleo_Training /POMRobot/Resources/MenubarResource.robot
Test Setup   Open the Browser with URL
Test Teardown   Close Browser

*** Test Cases ***

*** Test Cases ***
Validate Remove With Standard User on HomePage
    ${username}=    Set Variable    standard_user
    ${password}=    Set Variable    secret_sauce
    LoginResource.Fill the Login form    ${username}    ${password}
    RemoveResource.Click on the Add to cart on the Homepage
    RemoveResource.Verify the Remove is diplayed on the Homepage and Click on it
    RemoveResource.Verify the Remove is clicked on the Homepage

Validate Remove With Standard User on Add to Cart page
    LoginResource.Fill the Login form    ${username}    ${password}
    RemoveResource.Verify the Remove is clicked on Add to cart page

Validate Remove With Standard User on MenuBar
    LoginResource.Fill the Login form    ${username}    ${password}
    MenubarResource.Click on the Reset App State in the Menubar
    RemoveResource.Verify the Remove is clicked on Add to cart page

