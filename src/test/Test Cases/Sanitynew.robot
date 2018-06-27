*** Settings ***
Documentation  A resource file containing the application specific keywords
Library  Selenium2Library
#Library  library.jar
Resource  ../../../Library/variables1.robot
Resource  ../../../Library/locators.robot
Resource  ../../../StepDefinition/commons.robot
Resource  ../../../StepDefinition/Feature.robot

*** Test Cases ***  
Verify Sanity Suite of EdgeLINC dev in tenant1
  Set Selenium Timeout  300000
  Login EdgeLINC
  Go to Device Management Page
  Add Device functionality
  Delete device functionality
  Go to Locomotive Management Page
  Add Locomotives functionality
  Device Reachability functionality
  Go to Admin Page
  Create new user and assign role functionality  
    
 #Verify Sanity functionalities of EdgeLINC in Tenant1   
  # Login EdgeLINC
  # Go to Device Management Page
  # Add Device functionality
   #Delete device functionality
  # Go to Locomotive Management Page
  # Add Locomotives functionality
  # Device Reachability functionality
  # Create new user and assign role functionality
   Logout LDARS
   Close Browser
  
 #Verify Locomotive Data of tenant2 is not visible in tenant1
  
 # Login EdgeLINC 
 # Go to Locomotive Management Page
 # Locomotive Data Visibility
 # Logout EdgeLINC
  #Close Browser
    
  
    