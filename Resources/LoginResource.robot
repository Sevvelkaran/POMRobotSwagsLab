*** Settings ***
Documentation    Login Resource for the Login page
Library    SeleniumLibrary


*** Variables ***
${Homepage_title_locator}    //span[text()='Products']
${error_message_locator}     //h3[@data-test="error"]


*** Keywords ***

Fill the Login form
    [Arguments]    ${username}    ${password}
    Input Text    xpath://input[@placeholder="Username"]    ${username}
    Input Text    xpath://input[@placeholder="Password"]    ${password}
    Click Element    xpath://input[@value="Login"]

Verify the error message is displayed for locked_out_user
    Element Text Should Be    ${error_message_locator}    Epic sadface: Sorry, this user has been locked out.

Verify the error message is displayed for blank username
    Element Text Should Be    ${error_message_locator}    Epic sadface: Username is required

Verify the error message is displayed for blank password
    Element Text Should Be    ${error_message_locator}    Epic sadface: Password is required

Verify the error message is displayed for invalid credentials
    Element Text Should Be    ${error_message_locator}    Epic sadface: Username and password do not match any user in this service

Verify the Homepage
    Element Should Be Visible    ${Homepage_title_locator}
    Element Text Should Be       ${Homepage_title_locator}    Products
