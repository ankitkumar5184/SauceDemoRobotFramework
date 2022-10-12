*** Settings ***
Resource    ../Resources/CommonPage.robot
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/AddProductPage.robot
Resource    ../Resources/LogoutPage.robot

Test Setup    CommonPage.Open my Browser
Test Teardown    CommonPage.Close My Browser

*** Test Cases ***

Add Product to Cart

    LoginPage.Enter Login Credentials and verfiy the page
    AddProductPage.Add product to the cart
    AddProductPage.Go to cart and order
    AddProductPage.Add Delivery Details
    LogoutPage.Logout from the website