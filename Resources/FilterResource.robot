*** Settings ***
Documentation    Resource file for the Filter option
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${z-a}     //select/option[@value="z-a"]
${username}    standard_user
${password}    secret_sauce


*** Keywords ***

Fill the Login form
    [Arguments]    ${Username}    ${Password}
    Input Text    xpath://input[@placeholder="Username"]    ${Username}
    Input Text    xpath://input[@placeholder="Password"]    ${Password}
    Click Element    xpath://input[@value="Login"]

Click on the Filter for z-a
    Click Element    xpath://select[@class="product_sort_container"]
    Select From List By Value    css:.product_sort_container    za

Verify items in Homepage after the filter is applied
    Sleep     2
    @{expectedlist}=    Create List    
    ...    Test.allTheThings() T-Shirt (Red)    
    ...    Sauce Labs Onesie    
    ...    Sauce Labs Fleece Jacket    
    ...    Sauce Labs Bolt T-Shirt    
    ...    Sauce Labs Bike Light    
    ...    Sauce Labs Backpack

    ${elements}=    Get WebElements    xpath://div[@data-test="inventory-item-name"]
@{actualList}=    Create List

FOR    ${element}    IN    @{elements}
    ${text}=    Get Text    ${element}
    Append To List    ${actualList}    ${text}
END

Click on the Filter for Low to High
    Click Element    xpath://select[@class="product_sort_container"]
    Select From List By Value    css:.product_sort_container    lohi

Verify items in Homepage after the filter is applied for low to high
    Sleep     2
    @{expectedlist}=    Create List    
    ...    Sauce Labs Onesie    
    ...    Sauce Labs Bike Light    
    ...    Sauce Labs Bolt T-Shirt
    ...    Test.allTheThings() T-Shirt (Red)    
    ...    Sauce Labs Backpack
    ...    Sauce Labs Fleece Jacket    

    ${elements}=    Get WebElements    xpath://div[@data-test="inventory-item-name"]
@{actualList}=    Create List

FOR    ${element}    IN    @{elements}
    ${text}=    Get Text    ${element}
    Append To List    ${actualList}    ${text}
END

Click on the Filter for High to Low
    Click Element    xpath://select[@class="product_sort_container"]
    Select From List By Value    css:.product_sort_container    hilo

Verify items in Homepage after the filter is applied for high to low
    Sleep     2
    @{expectedlist}=    Create List    
    ...    Sauce Labs Fleece Jacket    
    ...    Sauce Labs Backpack    
    ...    Test.allTheThings() T-Shirt (Red)    
    ...    Sauce Labs Bolt T-Shirt    
    ...    Sauce Labs Bike Light    
    ...    Sauce Labs Onesie    

    ${elements}=    Get WebElements    xpath://div[@data-test="inventory-item-name"]