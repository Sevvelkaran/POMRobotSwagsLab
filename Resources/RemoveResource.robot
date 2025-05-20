*** Settings ***
Documentation   Remove Resource for the Remove Functionality
Library    SeleniumLibrary


*** Variables ***
${Add_Homepage}    //button[@name="add-to-cart-sauce-labs-backpack"]
${Remove_Homepage}    //button[text()="Remove"]
${Add_Cart_Page}    //a[@class='shopping_cart_link']
${username}    standard_user
${password}    secret_sauce

*** Keywords ***

Fill the Login form
    [Arguments]    ${Username}    ${Password}
    Input Text    xpath://input[@placeholder="Username"]    ${Username}
    Input Text    xpath://input[@placeholder="Password"]    ${Password}
    Click Element    xpath://input[@value="Login"]

Click on the Add to cart on the Homepage
    Click Element    ${Add_Homepage}

Verify the Remove is diplayed on the Homepage and Click on it
    ${text}=    Get Text    ${Remove_Homepage}
    Should Be Equal As Strings    ${text}    Remove
    Click Element    ${Remove_Homepage}

Verify the Remove is clicked on the Homepage
    ${text}=    Get Text    ${Add_Homepage}
    Should Be Equal As Strings    ${text}    Add to cart

Verify the Remove is clicked on Add to cart page
    Click Element    ${Add_Homepage}
    Click Element     ${Add_Cart_Page}
    ${text}=    Get Text    ${Remove_Homepage}
    Should Be Equal As Strings    ${text}    Remove
    Click Element    ${Remove_Homepage}



