*** Settings ***
Documentation  Modify the sw.ver.change.interval to different value 


Library    Selenium2Library
Library    String
Library    Collections
Resource  ../../../Library/variables1.robot
Resource  ../../../Library/locators.robot
Resource  ../../../StepDefinition/commons.robot
Resource  ../../../StepDefinition/Feature.robot
Resource  ../../../StepDefinition/keywords.robot
*** Test Cases ***
TC30961
    Open Connection and login  uplincgateway  1k0D1j3T  223  Y
    
