*** Settings ***
Documentation  A resource file containing the application specific keywords
Library  Selenium2Library
#Library  library.jar
Resource  ../../../Library/variables1.robot
Resource  ../../../Library/locators.robot
Resource  ../../../StepDefinition/commons.robot
Resource  ../../../StepDefinition/Feature.robot


*** Test Cases ***  
TC59673 Template Management : Verify Stop After textbox exist :LDVR Service Template
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC59673  
    Logout LDARS
    Close Browser

TC59676 Template Management : Verify ITCM Enabled CheckBox exist :LDVR Service Template
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC59676
    Logout LDARS
    Close Browser
    
TC59677 Template Management : Verify the functionality of ITCM Enabled CheckBox exist :LDVR Service Template
  Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC59677
    Logout LDARS      
    Close Browser    
TC59674 Template Management : Verify Stop After when Zero Speed TimeOut checked : LDVR Service Template
  Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC59674
    Logout LDARS      
    Close Browser 
    
TC59670 Template Management : Verify Zero Speed TimeOut exist: LDVR Service Template
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC59670
    Logout LDARS      
    Close Browser
             
 #TC59243 Verify that user can submit the LDVR data request successfully
   # googlepage
    #Set Selenium Timeout  3000000
    #Login LDARS
    #Go To Device Management Page
    #TC59243
TC59675 Template Management : Verify Stop After when Zero Speed TimeOut unchecked : LDVR Service Template
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC59675
    Logout LDARS      
    Close Browser
    
TC60493 Template Management : Verify no single quote, < or > is in description field for all Specific templates
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC60493
    Logout LDARS      
    Close Browser   
TC60496 Template Management : Verify the default value of field Number in Create Template screen for all specific templates
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC60496
    Logout LDARS      
    Close Browser
TC60497 Template Management : Verify the default value of field Version in Create Template screen for all specific templates.
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC60497
    Logout LDARS      
    Close Browser
    
TC59744 Verify the EMP Network Address TextBox format :LDVR Service Template
    
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC59744
    Logout LDARS
    Close Browser
    
    
 TC59668 Template Management : Verify LDVR Service Template type exist
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC59668
    Logout LDARS
    Close Browser 
    
 TC59606 Template Management : Verify Template type drop down box contains Commissioning Template Type
    Set Selenium Timeout  300000
    Login LDARS
    Go to Template Management Page
    TC59606
    Logout LDARS
    Close Browser     
        
       
    

    
    
       


    
