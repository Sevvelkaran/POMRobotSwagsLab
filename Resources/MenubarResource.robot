*** Settings ***
Documentation    Menubar Resource for the Menubar on the Homepage
Library    SeleniumLibrary

*** Variables ***
${Homepage_title_locator}    //span[text()='Products']
${About_demo}    //button[text()='Book a demo']
${logout}    //h4[text()='Accepted usernames are:']
${reset}    //span[text()='1']
${after_reset}   //a[@data-test="shopping-cart-link"]
${Username}    standard_user
${Password}    secret_sauce

*** Keywords ***

Fill the Login form
    [Arguments]    ${Username}    ${Password}
    Input Text    xpath://input[@placeholder="Username"]    ${Username}
    Input Text    xpath://input[@placeholder="Password"]    ${Password}
    Click Element    xpath://input[@value="Login"]

Click an item and Click on the All Items
    Click Element    xpath://div[text()='Sauce Labs Backpack']
    Click Element    xpath://button[@id="react-burger-menu-btn"]
    Click Element    xpath://a[@id="inventory_sidebar_link"]

Verify the the ALL Items have brought to the homepage
    Element Text Should Be    ${Homepage_title_locator}    Products

Click on the About in the menubar
    Click Element    xpath://button[@id="react-burger-menu-btn"]
    Click Element    xpath://a[@id="about_sidebar_link"]

Verify the About page 
    Element Text Should Be    ${About_demo}    Book a demo

Navigate Back to the Homepage and Verify
    Go Back
    Element Should Be Visible    ${Homepage_title_locator}
    Element Text Should Be       ${Homepage_title_locator}    Products

Click on Logout in the Menubar
    Click Element    xpath://button[@id="react-burger-menu-btn"]
    Click Element    xpath://a[@id="logout_sidebar_link"]

Verify the Logout is successful
    Element Text Should Be    ${logout}    Accepted usernames are:

Click on the Reset App State in the Menubar
    Click Element    xpath://button[@name="add-to-cart-sauce-labs-backpack"]
    Click Element    xpath://button[@id="react-burger-menu-btn"]
    Element Text Should Be    ${reset}    1
    Click Element    xpath://a[@id="reset_sidebar_link"]


# Verify the Reset App State is successful
#     Element Text Should Be    ${after_reset}    
    



