*** Settings ***
Resource     ../Resources/CommonPage.robot
Resource     ../Resources/LoginPage.robot
Resource     ../Resources/LogoutPage.robot

Test Setup    CommonPage.Open my Browser
Test Teardown    CommonPage.Close My Browser

*** Test Cases ***

Login in the website

    LoginPage.Enter Login Credentials and verfiy the page
    LogoutPage.Logout from the website