*** Settings ***
Documentation    Generic resource file for Robot Framework
Library          SeleniumLibrary

*** Keywords ***
Open the Browser with URL
    Open Browser    https://www.saucedemo.com    headlessfirefox
    Maximize Browser Window
    Set Selenium Implicit Wait    5s

Close the Browser
    Close Browser
    
