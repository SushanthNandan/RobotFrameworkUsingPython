*** Settings ***
Documentation  A resource file containing the application specific keywords
Library  Selenium2Library
#Library  library.jar
Resource  ../../../Library/variables1.robot
Resource  ../../../Library/locators.robot
Resource  ../../../StepDefinition/commons.robot
Resource  ../../../StepDefinition/Feature.robot

*** Test Cases ***  
Verify Locomotive Data of tenant2 is not visible in tenant1
  
  Login EdgeLINC 
  Go to Locomotive Management Page
  Locomotive Data Visibility
  Logout EdgeLINC
  Close Browser
 