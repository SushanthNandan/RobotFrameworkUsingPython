*** Keywords ***
Login LDARS    
    Open Browser  ${URL1}  ${BROWSER}
    Maximize Browser Window
   # Wait Until Page Contains Element  id=header  
     Wait Until Page Contains Element  //*[@id='login-box']/header/div
    Input Text  ${LoginNameField1}  ${LoginName}
    Input Text  ${LoginPWDField1}  ${Password}
    Wait Until Element Is Enabled  ${LoginSubmitField1}
    Click Element  ${LoginSubmitField1}
    
    
Login EdgeLINC
       Open Browser  ${edgelincURL}  ${BROWSER}
       Maximize Browser Window
       Sleep  30s
       Wait Until Page Contains Element  //*[@id='login-box']/header/div
       #Input Text  ${EdgeLoginNameField}  ${EdgeLoginName}
       #Input Text  ${EdgeLoginPWDField}  ${EdgePassword}
       #Wait Until Element Is Enabled  ${EdgeLoginSubmitField1}
       #Click Element  ${EdgeLoginSubmitField1}
       Input Text  ${LoginNameField1}  ${LoginName}
    Input Text  ${LoginPWDField1}  ${Password}
    Wait Until Element Is Enabled  ${LoginSubmitField1}
    Click Element  ${LoginSubmitField1}
    Sleep  40s
    
Go to Admin Page
        Sleep  40s
        Wait Until Page Contains Element  ${SideBar}
        Click Element  ${Admintab}
         
        
    
    
 googlepage
     Open Browser  ${URL1}  ${BROWSER}   
    
#Login1 LDARS    
   # ${driver}=   My_Open_Browser  ${URL}
   # Maximize Browser Window
   # Wait Until Page Contains Element  id=header    
    #Input Text  ${LoginNameField}  ${LoginName}
   # Input Text  ${LoginPWDField}  ${Password}
  #  Wait Until Element Is Enabled  ${LoginSubmitField}
   # Click Element  ${LoginSubmitField}   

Go to Locomotive Management Page
    Sleep  40s
    Wait until Page Contains Element  ${Edgelinclogo} 
    Wait Until Page Contains Element  ${SideBar}  
    Wait Until Element Is Visible  ${MgmntTab_SideBar}
    Click Element  ${MgmntTab_SideBar}  
    Click Element  ${LocomotiveMgmntTab_SideBar}
    Wait Until Page Contains  ${LocomotiveManagement}
     
  
 Go To Device Management Page    
    Wait Until Page Contains Element  ${SideBar}  
    Wait Until Element Is Visible  ${MgmntTab_SideBar}
    Click Element  ${MgmntTab_SideBar}
    Click Element  ${DeviceMgmntTab_SideBar}
    Wait Until Page Contains  ${DeviceManagement}
    
Go to Template Management Page
    Wait Until Page Contains Element  ${SideBar}  
    Wait Until Element Is Visible  ${MgmntTab_SideBar}
    Click Element  ${MgmntTab_SideBar}
    Click Element  ${TemplateMgmntTab_SideBar}
    Wait Until Page Contains  ${TemplateManagement}    

Logout EdgeLINC
    Execute Javascript  ${ScrollUp}
    Click Element  ${MyProfileTab}
    Wait Until Element Is Enabled  ${LogoutLink}
    Click Element  ${LogoutLink}