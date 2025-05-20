*** Settings ***
Documentation    Menubar Resource for the Menubar on the Homepage
Library    SeleniumLibrary

*** Variables ***
${Homepage_title_locator}    //span[text()='Products']
${About_demo}    //button[text()='Book a demo']
${logout}    //h4[text()='Accepted usernames are:']
${reset}    //span[text()='1']
${username}    standard_user
${password}    secret_sauce

*** Keywords ***

Fill the Login form
    [Arguments]    ${username}    ${password}
    Input Text    xpath://input[@placeholder="Username"]    ${username}
    Input Text    xpath://input[@placeholder="Password"]    ${password}
    Click Element    xpath://input[@value="Login"]

Click an item and Click on the All Items
    Click Element    xpath://div[text()='Sauce Labs Backpack']
    Click Element    xpath://button[@id="react-burger-menu-btn"]
    Click Element    xpath://a[@id="inventory_sidebar_link"]

Verify the the ALL Items have brought to the homepage
    Element Text Should Be    ${Homepage_title_locator}    Products



