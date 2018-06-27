*** Settings ***
Documentation  A resource file containing the application specific keywords
Library  Selenium2Library
#Library  library.jar
Resource  ../../../Library/variables1.robot
Resource  ../../../Library/locators.robot
Resource  ../../../StepDefinition/commons.robot
Resource  ../../../StepDefinition/Feature.robot

*** Test Cases ***  
Verify Create User and assign role functionality in tenant2
     Login EdgeLINC 
     Go to Admin Page
     Create new user and assign role functionality  
     Logout EdgeLINC
     Close Browser
