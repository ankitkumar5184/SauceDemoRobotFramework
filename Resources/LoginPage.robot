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
    # ${count}    Get Element Count    //h3[@data-test="error"]  
    # Run Keyword If    ${count}==0    Click Element    ${btn_login}    
    # ...    ELSE IF    ${count}>= 1    Click Element    ${btn_login}
    # Page Should Contain       Epic sadface: Username and password do not match any user in this service
    
    Page Should Contain    Sauce Labs