*** Settings ***
Documentation  A resource file containing the application specific keywords
Library  Selenium2Library
#Library  library.jar
Resource  ../../../Library/variables1.robot
Resource  ../../../Library/locators.robot
Resource  ../../../StepDefinition/commons.robot
Resource  ../../../StepDefinition/Feature.robot

*** Test Cases ***  
TC59648 Verify functionality of Remove Templates button: Commissioning Template
    
    Set Selenium Timeout  300000
    Login LDARS
    Go to Device Management Page
    TC59292
    Logout LDARS
    Close Browser
