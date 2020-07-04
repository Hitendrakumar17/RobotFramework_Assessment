*** Settings ***
documentation  This is some basic info about whole test suite
Library  Selenium2Library
Library  BuiltIn

# pybot Test/TestSuite/TC_01_Launch.robot
# http://www.just-eat.co.uk/
# Order takeaway online from 30,000+ food delivery restaurants. | Just Eat
# //input[@name='postcode']


# http://newtours.demoaut.com
# Welcome: Mercury Tours
#


*** Variables ***
${URL}      http://www.just-eat.co.uk/
${title}    Order takeaway online from 30,000+ food delivery restaurants. | Just Eat
${timeout}  6s


*** Test Cases ***
TestCase_01: Navigate to Log_in Page
    [Documentation]  This is some basic info about test case
    [Tags]  Somke
    [Setup]
        Open Mercury Website in Chrome and Maximize
        Verity the Home page title
        sleep   ${timeout}
        Click on Sign-on Link
        sleep   ${timeout}
    [Teardown]  Close Browser

*** Keywords ***
Open Mercury Website in Chrome and Maximize
    Open Browser    ${URL}  internet explorer
    Maximize Browser Window
    Log to console  Website navigated successfully

Verity the Home page title
    Title Should be  ${title}
    Log to console  Home Page title verified

Click on Sign-on Link
    # Click Element   xpath=//input[@name='login']
    Sleep    5s
    Input Text      //input[@name='postcode']   AR51 1AA
    Sleep    5s
    Click Element   xpath=//button[@type='submit']
    Sleep    5s
    # //*[@id="forminput"]    CH123
    # input text      //input[@name='postcode']       xyz
    Log to console  Clicked on Sign-on link successfully



