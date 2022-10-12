*** Settings ***
Library    SeleniumLibrary
Library    ../venv/lib/site-packages/robot/libraries/Collections.py
Variables   ../Locators/Locator.py
Variables    ../TestData/Datafile.py

*** Variables ***

*** Keywords ***

Select Products order list  
    Select From List By Value    ${dropdown}    hilo
    ${count}    Get Element Count    ${product_count}
  
    FOR  ${i}  IN RANGE  1  ${count}+1
        ${Text}    Get Text    ${product_count} [${i}]
#        Log To Console    ${Text}
        Page Should Contain    ${Text}
    END

Select Products price list

    ${count}    Get Element Count    ${product_price_count}
    FOR  ${i}  IN RANGE  1  ${count}+1
        ${Text}    Get Text     ${product_price_count} [${i}]
        Log To Console    ${Text}
        Page Should Contain    ${Text} 
    END

Social Media Accounts with mulitple window handles

    ${count}    Get Element Count    ${social_media}
    FOR  ${i}  IN RANGE  1  ${count}+1
        Set Selenium Speed    1
        Click Element    ${social_media} [${i}]
        ${windowhandles}    Get Window Handles
        Switch Window     ${windowhandles}[1]
        close window
        Switch Window    ${windowhandles}[0]
    END

verifying Website Privacy Policy Text

    ${Text}    Get Text     ${txt_privacy}
    Log To Console    ${Text}