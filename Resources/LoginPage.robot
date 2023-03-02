*** Settings ***
Library    SeleniumLibrary
Variables   ../Locators/Locator.py
Variables    ../TestData/Datafile.py


*** Variables ***

${text}=    //h3[@data-test="error"]

*** Keywords ***

Enter Login Credentials and verfiy the page
    
    Set Selenium Implicit Wait    10
    Input Text    ${txt_username}    ${username}
    Input Password    ${txt_password}    ${password}
    Click Element    ${btn_login}

    Page Should Contain    Sauce Labs