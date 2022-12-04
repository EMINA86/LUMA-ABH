*** Settings ***
Documentation    This is some basic info about the whole suite
Library          SeleniumLibrary
#Run the script
# robot -d results tests\account\Login.robot
*** Variables ***


*** Test Cases ***
Should be able add new customer
    [Documentation]      This is some basic info about the test
    [Tags]               1006    Smoke Contacts
    #Initialize Selenium
    Set selenium speed     .2s
    Set selenium timeout    10s

    #Open the browser

    log                    Starting the test case!
    open browser           https://magento.softwaretestingboard.com/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLnNvZnR3YXJldGVzdGluZ2JvYXJkLmNvbS8%2C/     chrome
    page should contain    Customer Login

    input text             id=email    test@test.livetest
    input text             id=pass    Test123#
    click button           Sign In
    page should contain    My Account


    sleep                  3s
    close browser

*** Keywords ***
