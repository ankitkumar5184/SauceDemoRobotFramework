*** Settings ***
Resource    ../Resources/CommonPage.robot
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/ProductOrder.robot
Resource    ../Resources/LogoutPage.robot

Test Setup    CommonPage.Open my Browser
Test Teardown    CommonPage.Close My Browser

*** Test Cases ***

Sorting the products and getting the values

    LoginPage.Enter Login Credentials and verfiy the page
    ProductOrder.Select Products order list
    ProductOrder.Select Products price list
    ProductOrder.Social Media Accounts with mulitple window handles
    ProductOrder.verifying Website Privacy Policy Text
    LogoutPage.Logout from the website