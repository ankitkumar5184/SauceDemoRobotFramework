*** Settings ***
Library    SeleniumLibrary
Variables   ../Locators/Locator.py
Variables    ../TestData/Datafile.py


*** Keywords ***
Add product to the cart
    
    ${count}    Get Element Count    ${btn_addtocart}
    Log To Console    ${count}
    FOR  ${i}  IN RANGE  1    ${count}+1
        Set Selenium Speed    0
        Click Element    ${btn_addtocart} [${i}]
        Click Button    ${addToCartLocator}
        Click Button    ${backToProducts}
    END
    ${count}    Get Text    //span[@class='shopping_cart_badge']
    Log To Console    ${count}
    Should Be Equal As Integers    ${count}    ${count}

Go to cart and order

    Click Element    ${btn_cart}
    Click Button    ${btn_checkout}
    Page Should Contain    ${assert_text}
    
Add Delivery Details

    Set Selenium Speed    1
    Input Text    ${txt_firstname}    ${firstName}
    Input Text    ${txt_lastname}    ${lastName}
    Input Text    ${txt_pincode}    ${postalCode}
    Click Element    ${btn_continue}
    Click Button    ${btn_finish}
    Page Should Contain    ${assert_txt}
    Click Button    ${btn_backtohome}