*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locator.py

*** Keywords ***

Logout from the website

    Click Button    ${btn_menu}
    Click Link    Logout