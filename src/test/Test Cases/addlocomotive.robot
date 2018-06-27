*** Settings ***
Documentation  A resource file containing the application specific keywords
Library  Selenium2Library
#Library  library.jar
Resource  ../../../Library/variables1.robot
Resource  ../../../Library/locators.robot
Resource  ../../../StepDefinition/commons.robot
Resource  ../../../StepDefinition/Feature.robot

*** Test Cases ***  
Verify add locomotive functionality in tenant2 of EdgeLINC dev
   Set Selenium Timeout  300000
   Login EdgeLINC
   Go to Locomotive Management Page
   Add Locomotives functionality
   Logout EdgeLINC
    Close Browser
