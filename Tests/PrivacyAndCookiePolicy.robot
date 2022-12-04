*** Settings ***
Documentation    This is some basic info about the whole suite
Library          SeleniumLibrary
#Run the script
# robot -d results tests\PrivacyAndCookiePolicy.robot
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
    open browser           https://magento.softwaretestingboard.com/   chrome

    click link           Privacy and Cookie Policy
    page should contain    Privacy Policy


    sleep                  3s
    close browser

*** Keywords ***
