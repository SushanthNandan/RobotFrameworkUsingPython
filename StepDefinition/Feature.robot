*** Keywords ***

Add Device functionality   
  Click Element  ${Adddevices}  
  Select From List By Label  ${Devicesdropdown}  ${uplincagent}
  Input Text  ${deviceserialnumber}  ${deviceserialnumbervalue} 
  Select From List By Label  ${devicetype}  ${devicetypevalue}
  Click Element   ${devicemgmt_savebtn}
  sleep  10s
  Capture Page Screenshot
  ${adddevicesuccessmessage_actual}  Get Text  ${adddevicesuccessmessage}
  Should Be Equal As Strings    ${adddevicesuccessmessage_expected}    ${adddevicesuccessmessage_actual}                      
    Capture Page Screenshot
    Click Element  ${devicemgmt_closebtn}
    Sleep  10s
    Input Text  ${devicemgmt_searchbox}  ${deviceserialnumbervalue}
    Sleep  10s
    ${actualdeviceserialnumbervalue}  Get Text  ${search_serialnumbervalue}
    Should Be Equal As Strings    ${deviceserialnumbervalue}  ${actualdeviceserialnumbervalue}
    Log to Console   Add device functionality is working fine
    
Device Reachability functionality
     Input Text  ${locomgmt_locoid}  ${locoidvalue}
     Sleep  10s
     Input Text  ${locomgmtsearchbox}  ${custidvalue}
     Sleep  10s
     ${locoidactual}  Get Text  ${locoidtext}
     Should Be Equal As Strings    ${locoidvalue}   ${locoidactual}
     Click Element  ${locoidtext}
     Sleep  10s
     ${locostatusvalue_actual}  Get Text  ${locostatus} 
     Run Keyword If  '${locostatusvalue_actual}' == 'Operational - no alerts'    Log to console  The status is operational-no alerts
     Run Keyword If  '${locostatusvalue_actual}' == 'Operational - some alerts'  Log to Console  The status is operational-some alerts
     #Should Be Equal As Strings    ${locostatusvalue_expected}  ${locostatusvalue_actual}
     Click Element   ${devicestab}
     Sleep  10s
     Input Text  ${devicestab_search}  ${devicestab_devicevalue}
     Sleep  10s
     ${devicetab_devicestatus_actual}  Get Text  ${devicestab_devicestatus}
     #Should Be Equal As Strings  ${devicestatusvalue_expected}  ${devicetab_devicestatus_actual}
     Run Keyword If   '${devicetab_devicestatus_actual}' == 'Operational - no alerts'   Log to console  The status is operational-no alerts
     Run Keyword If   '${devicetab_devicestatus_actual}' == 'Operational - some alerts'  Log to Console  The status is operational-some alerts
     ${devicename_actual}   Get Text  ${devicestab_devicename}
     Should Be Equal As Strings    ${devicestab_devicevalue}  ${devicename_actual}
     Capture Page Screenshot
     Log to Console  Device Reachability is working fine
Delete device functionality
        Input Text  ${devicemgmt_searchbox}  ${deviceserialnumbervalue}
        Sleep  10s
        Click Element  ${devicecheckbox}
        Click Element  ${deletedevicesbutton}
        Click Element  ${deletebutton}
        Sleep  10s
        ${devicedeletionsuccessmessage_actual}  Get Text  ${devicedeletionsuccessmsg}
        Should Be Equal As Strings    ${devicedeletionsuccessmessage_expected}    ${devicedeletionsuccessmessage_actual}
        Capture Page Screenshot
        Click Element  ${devicedelete_closebtn}
        Sleep  10s
        Input Text  ${devicemgmt_searchbox}  ${deviceserialnumbervalue}
        Sleep  10s
        ${nodevicemessageactual}  Get Text  ${nodevicesmessage}
        Should Be Equal As Strings    ${nodevicemessageexpected}    ${nodevicemessageactual}
        Capture Page Screenshot
        Log to Console  Device deletion functionality is working fine
        
Create new user and assign role functionality
     Click Element  ${Userstab}
     Sleep  20s
     Click Element  ${Addnewuser}        
     Sleep  10s
     Input Text  ${users_username}   ${username}
     Input Text  ${users_email}  ${email}
     
     Click Element   ${selectrole}
     Sleep  10s
     Click Element   ${technicianrole}
     #Click Element  //div[@class='autocomplete ng-scope']/li//*[text()='Technician']
     #Click Element  //*[@id='content-wrapper']/div[1]/div/div/div[2]/div/div/form/div/div[1]/div[1]/div[1]/div[3]/tags-input/div/auto-complete/div/ul/li
     #${rolecount} =   Get length     ${rolecountlocator}
     #Log to Console  ${rolecount} 
     #Click Element   //*[@id='content-wrapper']/div[1]/div/div/div[2]/div/div/form/div/div[1]/div[1]/div[1]/div[3]/tags-input/div/div/input
     #Select From List By Label   //div[@class='autocomplete ng-scope']/ul   Technician
    Input Text  ${users_password}  ${users_passwordvalue}
    Input Text  ${users_confirmpassword}  ${confirmpassword}
    Click Element   ${createuserbutton}
    Sleep  20s
    Input Text  ${userssearchbox}  ${username}
    Sleep  10s
    ${actualusername}  Get Text  //*[@id='content-wrapper']//table/tbody/tr[1]/td[1]
    Should Be Equal As Strings    ${username}    ${actualusername}
    ${actualuseremail}  Get Text  //*[@id='content-wrapper']//table/tbody/tr[1]/td[2]
    Should Be Equal As Strings    ${email}    ${actualuseremail}
    Capture Page Screenshot
        
Add Locomotives functionality
     Click Element  ${Addlocomotivesbutton}  
     Sleep  10s
     Select From List By Label  ${custid}  ${custidvalue}
     Input Text  ${locoid}  ${addlocoidvalue}
     Click Element  ${locosavebtn}
     Sleep  20s
     Click Element  ${addlococlosebtn} 
     Sleep  20s
     Input Text  ${locomgmtsearchbox}  ${addlocoidvalue}       
     Sleep  10s
     ${locoidactual}  Get Text  ${locoidtext}
     Should Be Equal As Strings    ${addlocoidvalue}   ${locoidactual}    
     Capture Page Screenshot
     Log to Console  Add locomotives functionality is working fine
     
 Loco Data1 Visibility
    Input Text  ${locomgmtsearchbox}  ${locoidvalue}
    Sleep  10s
     ${custiddatavalue}  Get Text  ${custiddata}
     Log to Console   CustID value  ${custiddatavalue}
     ${locoiddatavalue}  Get Text  ${locoiddata}
     Log to Console  Loco ID value  ${locoiddatavalue}
     ${statusdatavalue}  Get Text  ${statusdata}
     Log to Console  Loco Status  ${statusdatavalue}
     ${lastcommdatavalue}  Get Text  ${lastcommdata}
     Log to Console  Last Communication  ${lastcommdatavalue}
     ${lastposdatavalue}  Get Text  ${lastposdata}
     Log to Console  Last Pos(Lat.Long)  ${lastposdatavalue}
     ${assodatavalue}  Get Text  ${assodata}
     Log to Console  Association Date  ${assodata}
     ${alertsdatavalue}  Get Text  ${alertsdata}
     Log to Console  Alerts  ${alertsdatavalue}
     ${devicesdatavalue}  Get Text  ${devicesdata}
     Log to Console  Devices  ${devicesdatavalue} 
     
 Device Data Visibility
    Input Text  ${devicemgmt_searchbox}  ${deviceserialnumbervalue}
        Sleep  10s
        ${nodevicemessageactual}  Get Text  ${nodevicesmessage}
        Should Be Equal As Strings    ${nodevicemessageexpected}    ${nodevicemessageactual}
        Capture Page Screenshot
        Log to Console  Device Data visibility is working fine
         
 Locomotive Data Visibility
    Input Text  ${locomgmt_locoid}  ${locoidvalue}
    Input Text  ${locoidtovalue}  ${locoidvalue}
     Sleep  10s
     Input Text  ${locomgmtsearchbox}  ${custidvalue}
     Sleep  10s
     ${locoid_unavailablemessage}  Get Text  ${locoid_unavailable}
     Should Be Equal As Strings    ${locounavailablemessage_expected}   ${locoid_unavailablemessage}  
     Capture Page Screenshot  
     Log to Console  Loco Data visibility is working fine       
     
        
    
TC59673
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template
    Element Should be visible  id=stopAfter  StopAfter text box does exist
    Capture Page Screenshot
    
TC59676
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template
    Element Should be visible  id=itcmEnabled  itcmEnabled checkbox does exist
    Capture Page Screenshot
    
TC59677   
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template
    Element Should be visible  id=itcmEnabled  itcmEnabled checkbox does exist
    Click Element  id=itcmEnabled
    Sleep  10s
    Element Should be visible  id=empNetworkAddress  EmpNetwork Address field is displayed
    Element Should be visible  id=appGatewayPort  Application Gateway port field is displayed 
    Capture Page Screenshot
    
TC59674
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template
    Element Should be visible  id=zeroSpeedTimeoutEnabled
    Click Element  id=zeroSpeedTimeoutEnabled
    Sleep  10s
    Clear Element Text	id=stopAfter
    Input Text  id=stopAfter  1
    Clear Element Text	id=stopAfter
    Input Text  id=stopAfter  255
    Clear Element Text	id=stopAfter
    Input Text  id=stopAfter  256
    ${actual}  Get Text  //*[@id='service_template_form']/div/p/span
    Should Be Equal As Strings    ${errormsg}    ${actual}
    Capture Page Screenshot
    
 TC59670
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template
    Element Should be visible  id=zeroSpeedTimeoutEnabled
    Capture Page Screenshot
    
TC59675
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template
    Element Should be visible  id=zeroSpeedTimeoutEnabled
    Checkbox Should Not Be Selected  id=zeroSpeedTimeoutEnabled
    Element Should Be Disabled	id=stopAfter
    Capture Page Screenshot 
    
TC60493
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template
    Input Text  //*[@id='description']  hello<>
    ${actualdescmsg}  Get Text  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[2]/div[2]/p/span
    Should Be Equal As Strings    ${expecteddescmsg}    ${actualdescmsg}
    Capture Page Screenshot     
    
TC60496
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template  
    Input Text  //*[@id='description']  LDVR 
    Log  Number:
    ${actualnumbervalue}  Get Text  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[2]/div[1]/div[1]/div[1]
    Should Be Equal As Strings    ${expectednumbervalue}    ${actualnumbervalue}                      
    Capture Page Screenshot
    
TC60497
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template  
    Input Text  //*[@id='description']  LDVR 
    Log  Version:
    ${actualversionvalue}  Get Text  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[2]/div[1]/div[2]/div[1]/div/span
    Should Be Equal As Strings    ${expectedversionvalue}    ${actualversionvalue}                      
    Capture Page Screenshot
    
TC59744
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template  
    Input Text  //*[@id='description']  LDVR
    Set Window Position  466  1366
    Element Should be visible  id=itcmEnabled  itcmEnabled checkbox does exist
    Click Element  id=itcmEnabled
    Sleep  10s
    Element Should be visible  id=empNetworkAddress  EmpNetwork Address field is displayed
    Element Should be visible  id=appGatewayPort  Application Gateway port field is displayed
    Input Text  id=empNetworkAddress  10.0
    ${empactualmsg}  Get Text  //*[@id='service_template_form']/div/div[4]/p[1]/span
    Should Be Equal As Strings    ${empexpectedmsg}    ${empactualmsg}
    Capture Page Screenshot
    Clear Element Text	id=empNetworkAddress
    Input Text  id=empNetworkAddress  10.0:14.5
    Element should not be visible  ${empactualmsg}
    Capture Page Screenshot
    
TC59745
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template  
    Input Text  //*[@id='description']  LDVR
    Set Window Position  466  1366
    Element Should be visible  id=itcmEnabled  itcmEnabled checkbox does exist
    Click Element  id=itcmEnabled
    Sleep  10s
    Element Should be visible  id=empNetworkAddress  EmpNetwork Address field is displayed
    Element Should be visible  id=appGatewayPort  Application Gateway port field is displayed
    Input Text  id=empNetworkAddress  10.0:14.5
    Input Text  id=appGatewayPort  65536
    ${gatewayactualmsg}  Get Text  //*[@id='service_template_form']/div/div[4]/p[2]/span
    Should Be Equal As Strings    ${gatewayexpectedmsg}    ${gatewayactualmsg}
    Capture Page Screenshot
    Clear Element Text	id=appGatewayPort
    Input Text  id=appGatewayPort  65535
    Element should not be visible  ${gatewayactualmsg}
    Capture Page Screenshot
    Clear Element Text	id=appGatewayPort
    Input Text  id=appGatewayPort  1
    Element should not be visible  ${gatewayactualmsg}
    Capture Page Screenshot
    
TC59532
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Software Manifest Configuration Template
    Capture Page Screenshot
    
TC59668
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  LDVR: Service Template
    Capture Page Screenshot
    
TC59606  
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Element Should Be Visible  ${Templatetype}  Commissioning Template
    Capture Page Screenshot
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    
TC59610
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    Select From List By Label  restriction  Device
    Click Element  //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[2]/div/table/tbody/tr[3]/td
    Click Element  //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[3]/div/div/p[3]/a
    Set Window Position  466  1366
    Sleep  10s
    Element Should Be Visible  id=mconCommTemplate
    #Select From List  id=mconCommTemplate
    Select From List By Index    //*[@id='mconCommTemplate']  3
    Capture Page Screenshot
    
TC59643
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    Select From List By Label  restriction  Device
    Click Element  //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[2]/div/table/tbody/tr[3]/td
    Click Element  //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[3]/div/div/p[3]/a
    Set Window Position  466  1366
    Sleep  10s
    Element Should Be Visible  id=PFSTemplate
    #Select From List  id=mconCommTemplate
    Select From List By Index    PFSTemplate  2
    Capture Page Screenshot
    
TC59644
       
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    Select From List By Label  restriction  Device
    Click Element  //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[2]/div/table/tbody/tr[3]/td
    Click Element  //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[3]/div/div/p[3]/a
    Set Window Position  466  1366
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    
 TC59645
       Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    Select From List By Label  restriction  Device
    Click Element   xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[2]/div/table/tbody/tr[3]/td
    Click Element  xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[3]/div/div/p[3]/a
    Set Window Position  466  1366
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    Click Element  xpath=//a[contains(text(),'2')]
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    Click Element  //a[contains(text(),'<')]
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    Click Element  //a[contains(text(),'>>')]
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    Click Element  //a[contains(text(),'<<')]
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    
TC59646    
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    Select From List By Label  restriction  Device
    Click Element   xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[2]/div/table/tbody/tr[3]/td
    Click Element  xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[3]/div/div/p[3]/a
    Set Window Position  466  1366
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    Click Element  css=td.ng-isolate-scope.st-cs-row-checkbox > input[type='checkbox']
    Capture Page Screenshot
    CLick Element   //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div/div[2]/div/button
    Capture Page Screenshot
    ${additionaltemplatetypevalue}  Get Text  ${Additionaltemplatetype}
    ${selectedtemplatetypevalue}  Get Text  ${Selectedtemplatetype}
    Should Be Equal As Strings    ${additionaltemplatetypevalue}  ${selectedtemplatetypevalue}                      
    Capture Page Screenshot
    ${Additionaltemplatenumvervalue}  Get Text  ${Additionaltemplatenumver}
    ${Selectedtemplatenumvervalue}  Get Text  ${Selectedtemplatenumver}
    Should Be Equal As Strings  ${Additionaltemplatenumvervalue}  ${Selectedtemplatenumvervalue}
    Capture Page Screenshot
    ${Additiontemplatedescvalue}  Get Text  ${Additiontemplatedesc}
    ${Selectedtemplatedescvalue}  Get Text  ${Selectedtemplatedesc}
    Should Be Equal As Strings  ${Additiontemplatedescvalue}  ${Selectedtemplatedescvalue}
    Capture Page Screenshot
    
 TC59647 
      Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    Select From List By Label  restriction  Device
    Click Element   xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[2]/div/table/tbody/tr[3]/td
    Click Element  xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[3]/div/div/p[3]/a
    Set Window Position  466  1366
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    ${selectedtemplatemsgline1_actualvalue}  Get Text  ${selectedtemplatemsgline1}
    ${selectedtemplatemsgline2_actualvalue}  Get Text  ${selectedtemplatemsgline2}
    Should Be Equal As Strings  ${selectedtemplatemsgline1_expectedvalue}  ${selectedtemplatemsgline1_actualvalue}
    Should Be Equal As Strings  ${selectedtemplatemsgline2_expectedvalue}  ${selectedtemplatemsgline2_actualvalue}
    Capture Page Screenshot
    
TC59648    
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    Select From List By Label  restriction  Device
    Click Element   xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[2]/div/table/tbody/tr[3]/td
    Click Element  xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[3]/div/div/p[3]/a
    Set Window Position  466  1366
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    Click Element  css=td.ng-isolate-scope.st-cs-row-checkbox > input[type='checkbox']
    Capture Page Screenshot
    CLick Element   //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div/div[2]/div/button
    Capture Page Screenshot
    ${additionaltemplatetypevalue}  Get Text  ${Additionaltemplatetype}
    ${selectedtemplatetypevalue}  Get Text  ${Selectedtemplatetype}
    Should Be Equal As Strings    ${additionaltemplatetypevalue}  ${selectedtemplatetypevalue}                      
    Capture Page Screenshot
    ${Additionaltemplatenumvervalue}  Get Text  ${Additionaltemplatenumver}
    ${Selectedtemplatenumvervalue}  Get Text  ${Selectedtemplatenumver}
    Should Be Equal As Strings  ${Additionaltemplatenumvervalue}  ${Selectedtemplatenumvervalue}
    Capture Page Screenshot
    ${Additiontemplatedescvalue}  Get Text  ${Additiontemplatedesc}
    ${Selectedtemplatedescvalue}  Get Text  ${Selectedtemplatedesc}
    Should Be Equal As Strings  ${Additiontemplatedescvalue}  ${Selectedtemplatedescvalue}
    Capture Page Screenshot
    Click Element  ${selectedtemplatecheckbox}
    Element Should be Enabled  ${removetemplatesbutton}
    Click Element  ${removetemplatesbutton}
    Capture page Screenshot
    ${selectedtemplatemsgline1_actualvalue}  Get Text  ${selectedtemplatemsgline1}
    ${selectedtemplatemsgline2_actualvalue}  Get Text  ${selectedtemplatemsgline2}
    Should Be Equal As Strings  ${selectedtemplatemsgline1_expectedvalue}  ${selectedtemplatemsgline1_actualvalue}
    Should Be Equal As Strings  ${selectedtemplatemsgline2_expectedvalue}  ${selectedtemplatemsgline2_actualvalue}
    Capture Page Screenshot
 
 TC59649
       Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    Select From List By Label  restriction  Device
    Click Element   xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[2]/div/table/tbody/tr[3]/td
    Click Element  xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[3]/div/div/p[3]/a
    Set Window Position  466  1366
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    Input Text  ${Templatesearch}  ${templatesearchvalue}
    Sleep  10s
    ${rowCount} =   Get Matching Xpath Count  ${rowLocator}
    Log  ${rowCount} 
    :FOR  ${x}   IN RANGE  1  ${rowcount}
      
    \  ${actualtemplateversionvalue}  Get Text  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[1]/list-table/table/tbody[1]/tr[${x}]/td[3]
    
    \  Run Keyword If   '${actualtemplateversionvalue}' == '${expectedtemplateversionvalue}'  Exit For Loop
    
    
    #Should Be Equal As Strings    ${actualtemplateversionvalue}    ${expectedtemplateversionvalue}  Exit For Loop
    Capture Page Screenshot
    
 TC59650  
    Select From List By Label  ${Interfacetype}  ${QNXGateway} 
    sleep  10s
    Click Element  ${Newtemplatebutton}
    Sleep  10s
    Wait Until Page Contains  Create Template
    Select From List By Label   ${Templatetype}  Commissioning Template  
    Capture Page Screenshot
    Select From List By Label  restriction  Device
    Click Element   xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[2]/div/table/tbody/tr[3]/td
    Click Element  xpath=//div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[3]/qnx-template-restrictions/div/div[3]/div/div/p[3]/a
    Set Window Position  466  1366
    Sleep  10s
    Element Should Be Visible  class=col-sm-12
    Capture Page Screenshot
    Input Text  ${Templatesearch}  ${templatesearchvalue}
    Sleep  10s
    ${rowCount} =   Get Matching Xpath Count  ${rowLocator}
    Log  ${rowCount} 
    :FOR  ${x}   IN RANGE  1  ${rowcount}
      
    \  ${actualtemplateversionvalue}  Get Text  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[1]/list-table/table/tbody[1]/tr[${x}]/td[3]
    
    \  Run Keyword If   '${actualtemplateversionvalue}' == '${expectedtemplateversionvalue}'  Exit For Loop
    Capture Page Screenshot
    Click Element  ${searchclearbutton} 
    Sleep  10s
    ${rowCount1} =   Get Matching Xpath Count  ${rowLocator}
    :FOR  ${x}   IN RANGE  1  ${rowcount1}
      
    \  ${actualtemplateversionvalue}  Get Text  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[1]/list-table/table/tbody[1]/tr[${x}]/td[3]
    
    \  Run Keyword If   '${actualtemplateversionvalue}' != '${expectedtemplateversionvalue}'  Exit For Loop
    Capture Page Screenshot
              
              
 TC59292
   Input Text  ${SearchBox_DeviceMgmt}  ${QNXLocoID}
   Wait Until Page Contains   ${QNXLocoID}
   Sleep  30s
   #Click Element  //table/tbody/tr[1]/td[5]/a  
   #Wait Until Page Contains  Device Information
   Click Element  xpath=(//a[contains(text(),'123')])[2]      
   Sleep  30s
   Click Element  ${Statustab}
   Sleep  30s
   Click Element  ${Controllertab}
   Sleep  30s
   Page Should Contain Element   //*[@id='Details']//*[contains(text(),'Error: Cannot get Controller: No Data Found.')]
    Capture Page Screenshot
 TC59066 
    Input Text  ${SearchBox_DeviceMgmt}  ${QNXGateway}
    Sleep  10s
    Click Element  //table/tbody/tr[1]/td[5]/a    
    Wait Until Page Contains  Requests   
    Page Should Contain Link  ${RequestsTab}  
    
TC59072
    Input Text  ${SearchBox_DeviceMgmt}  ${QNXGateway}
    Sleep  10s
    Click Element  //table/tbody/tr[1]/td[5]/a
    Wait Until Page Contains  Device Information       
    Click Element  ${RequestsTab}    
    Wait Until Element Is Enabled  ${RequestType_Requests_DeviceMgmt}
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${ForceRegistration_RequestType_Requests_DeviceMgmt}
    Capture Page Screenshot
    
TC59098
    Input Text  ${SearchBox_DeviceMgmt}  ${UpLINCGateway}
    Sleep  10s
    Click Element  //table/tbody/tr[1]/td[5]/a
    Wait Until Page Contains  Summary  
    Page Should Not Contain Link  ${RequestsTab}  
    
TC59068
    Input Text  ${SearchBox_DeviceMgmt}  ${QNXLocoID}
    Wait Until Page Contains   ${QNXLocoID}
    Click Element  //table/tbody/tr[1]/td[5]/a   
    Wait Until Page Contains  Device Information       
    Click Element  ${RequestsTab} 
    Wait Until Element Is Enabled  ${RequestType_Requests_DeviceMgmt}
    Click Element  ${Submit_Requests_DeviceMgmt}
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${ForceRegistration_RequestType_Requests_DeviceMgmt}
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${ConfigurationVigilanceRequest_RequestType_Requests_DeviceMgmt}
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${LDVRDataRequest_RequestType_Requests_DeviceMgmt} 
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${LDVRMediaRequest_RequestType_Requests_DeviceMgmt}
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${LDVRPreservation/DownloadRequest_RequestType_Requests_DeviceMgmt}
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${LDVRRemoteStop/StartRequest_Requests_DeviceMgmt}
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${MCONStatusRequest_RequestType_Requests_DeviceMgmt}  
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${RebootRequest_RequestType_Requests_DeviceMgmt} 
    Capture Page Screenshot
    
TC59077
    Input Text  ${SearchBox_DeviceMgmt}  ${QNXLocoID}
    Wait Until Page Contains   ${QNXLocoID}
    Click Element  //table/tbody/tr[1]/td[5]/a    
    Wait Until Page Contains  Device Information       
    Click Element  ${RequestsTab} 
    Wait Until Element Is Enabled  ${RequestType_Requests_DeviceMgmt}
    Click Element  ${Submit_Requests_DeviceMgmt}
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}   ${ForceRegistration_RequestType_Requests_DeviceMgmt}
    Wait Until Element Is Visible   //*[@id='Details']//label[5]/span[2]/span
   # Sleep  80s
    Click Element    ${SARRadioBtn_CommPath_Requests_DeviceMgmt}
    ${CMUIPAddress}=       Get Value   ${CMUIPAddress_Requests_DeviceMgmt}
    Log  ${CMUIPAddress}
    ${ConfirmIPAddress}=       Get Value  ${ConfirmIPAddress_Requests_DeviceMgmt}
    Log  ${ConfirmIPAddress}
    Capture Page Screenshot
    
TC59092
    Input Text  ${SearchBox_DeviceMgmt}  ${QNXLocoID}
    Wait Until Page Contains   ${QNXLocoID}
    Click Element  //table/tbody/tr[1]/td[5]/a   
    Wait Until Page Contains  Device Information       
    Click Element  ${RequestsTab} 
    Wait Until Element Is Enabled  ${RequestType_Requests_DeviceMgmt}
    Click Element  ${Submit_Requests_DeviceMgmt}
    Capture Page Screenshot
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${ForceRegistration_RequestType_Requests_DeviceMgmt}
    Capture Page Screenshot
    Element Should Be Enabled  ${Submit_Requests_DeviceMgmt}
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${ConfigurationVigilanceRequest_RequestType_Requests_DeviceMgmt}
    Capture Page Screenshot
    Element Should Be Enabled  ${Submit_Requests_DeviceMgmt}
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${LDVRDataRequest_RequestType_Requests_DeviceMgmt} 
    Capture Page Screenshot
    Element Should Be Enabled  ${Submit_Requests_DeviceMgmt}
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${LDVRMediaRequest_RequestType_Requests_DeviceMgmt}
    Capture Page Screenshot
    Element Should Be Enabled  ${Submit_Requests_DeviceMgmt}
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${LDVRPreservation/DownloadRequest_RequestType_Requests_DeviceMgmt}
    Capture Page Screenshot
    Element Should Be Enabled  ${Submit_Requests_DeviceMgmt}
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${LDVRRemoteStop/StartRequest_Requests_DeviceMgmt}
    Capture Page Screenshot
    Element Should Be Enabled  ${Submit_Requests_DeviceMgmt}
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${MCONStatusRequest_RequestType_Requests_DeviceMgmt}  
    Capture Page Screenshot
    Element Should Be Enabled  ${Submit_Requests_DeviceMgmt}
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${RebootRequest_RequestType_Requests_DeviceMgmt} 
    Capture Page Screenshot  
    Element Should Be Enabled  ${Submit_Requests_DeviceMgmt}
    
TC59094
    Input Text  ${SearchBox_DeviceMgmt}  ${QNXLocoID}
    Wait Until Page Contains   ${QNXLocoID}
    Click Element  //table/tbody/tr[1]/td[5]/a   
    Wait Until Page Contains  Device Information       
    Click Element  ${RequestsTab} 
    Wait Until Element Is Enabled  ${RequestType_Requests_DeviceMgmt}    
    Select From List By Label  ${RequestType_Requests_DeviceMgmt}  ${ConfigurationVigilanceRequest_RequestType_Requests_DeviceMgmt}
    Input Text  ${CommentsSection_Requests_DeviceMgmt}  ${ConfigurationVigilanceRequest_RequestType_Requests_DeviceMgmt}
    Element Should Be Enabled  ${Submit_Requests_DeviceMgmt}  
    Click Element  ${Submit_R