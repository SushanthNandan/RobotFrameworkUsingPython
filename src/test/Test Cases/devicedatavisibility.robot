*** Settings ***
Documentation  A resource file containing the application specific keywords
Library  Selenium2Library
#Library  library.jar
Resource  ../../../Library/variables1.robot
Resource  ../../../Library/locators.robot
Resource  ../../../StepDefinition/commons.robot
Resource  ../../../StepDefinition/Feature.robot

*** Test Cases ***  
Verify device data visibility functionality in tenant2 of EdgeLINC dev
   Set Selenium Timeout  300000
   Login EdgeLINC
   Go to Device Management Page
   Device Data Visibility
   Logout EdgeLINC
    Close Browser
    
    
