*** Variables ***
${LoginNameField}  id=userNameInput
${LoginNameField1}  //*[@id='login-box-inner']/div[1]/div/form/div[1]/input
${LoginPWDField}  id=passwordInput 
${LoginPWDField1}  //*[@id='login-box-inner']/div[1]/div/form/div[2]/input
${EdgeLoginNameField}  //*[@id='login-box-inner']/div[1]/div/form/div[1]/input
${EdgeLoginPWDField}  //*[@id='login-box-inner']/div[1]/div/form/div[2]/input 
${EdgeLoginSubmitField1}  //*[@id='login-box-inner']/div[1]/div/form/div[3]/button
${Adddevices}  //*[@id='content-wrapper']/div[1]/predix-device-list/div/div[2]/div[3]/div[1]/icon-box/button[3]
${Devicesdropdown}  css=select[name='deviceName']
${devicesdropdownvalue}  css=option[@value='string:UpLINCAgent']
${deviceserialnumber}  //input[@name='serialNumber']
${devicetype}  //select[@name='deviceType']
${devicemgmt_savebtn}  //input[@value='Save']
${adddevicesuccessmessage}  //*[@id='content-wrapper']/div[1]/predix-device-list/div/div[2]/div[4]/group-operation-controls/predix-add-device/div/div[2]/div[1]/div
${devicemgmt_closebtn}  //div[@id='content-wrapper']/div/predix-device-list/div/div[2]/div[4]/group-operation-controls/predix-add-device/div/div[2]/div[3]/div/button
${devicemgmt_searchbox}  xpath=(//input[@type='text'])[4]
${search_serialnumbervalue}  //div[@id='content-wrapper']/div/predix-device-list/div/div[2]/div[5]/list-table/predix-device-table/table/tbody/tr/td[3]/a
${devicecheckbox}  //div[@id='content-wrapper']//table/tbody/tr/td/input
${deletedevicesbutton}  //div[@id='content-wrapper']/div/predix-device-list/div/div[2]/div[5]/list-table/button
${deletebutton}  //div[@id='content-wrapper']/div/predix-device-list/div/div[2]/div[4]/group-operation-controls/predix-delete-devices/div/div/div[3]/div[2]/button
${devicedeletionsuccessmsg}  //*[@id='content-wrapper']/div[1]/predix-device-list/div/div[2]/div[4]/group-operation-controls/predix-delete-devices/div/div[2]/div[1]/div[1]
${devicedelete_closebtn}  //*[@id='content-wrapper']/div[1]/predix-device-list/div/div[2]/div[4]/group-operation-controls/predix-delete-devices/div/div[2]/div[2]/div/button
${nodevicesmessage}  //div[@id='content-wrapper']//table/tbody/tr/td[2]
${Addlocomotivesbutton}  //div[@id='content-wrapper']//icon-box/button
${custid}  //*[@id='content-wrapper']//table/tbody/tr/td[1]/select
${locoid}  //div[@id='content-wrapper']//table/tbody/tr/td[2]/div/input
${locosavebtn}  //input[@value='Save']
${addlococlosebtn}  //*[@id='content-wrapper']/div[1]/div/div/div[2]/div/systems-list/div/div/div[2]/div[4]/group-operation-controls/add-devices-range/div/div/div[3]/div/button
${locomgmtsearchbox}  xpath=(//input[@type='text'])[5]
${locoidtext}  //*[@id='content-wrapper']//table/tbody/tr/td[3]/a
${locomgmt_custid}  id=selectCustomerId
${locostatus}  //*[@id='Details']/div/div[1]/div/div/h2/span
${devicestab}  //a[contains(text(),'Devices')]
${devicestab_search}  xpath=(//input[@type='text'])[6]
${devicestab_devicestatus}  //*[@id='Details']//table/tbody/tr/td[2]/span
${devicestab_devicename}  //*[@id='Details']//table/tbody/tr/td[3]/a
${locomgmt_locoid}  //input[@type='number']
${Admintab}  //*[@id='sidebar-nav']/ul/li[7]/a/span
${Userstab}  //*[@id='sidebar-nav']/ul/li[7]/ul/li[1]/a
${Addnewuser}  //a[contains(text(),'Add New User')]
${users_username}  //input[@name='user_name']
${users_email}  //input[@name='user_email']
${users_role}  //*[@id='content-wrapper']//div/ul/li
${users_password}   //input[@name='password_newuser']
${users_confirmpassword}  //input[@name='passwordConfirm_newuser']
${createuserbutton}  //button[@name='createUser']
${userssearchbox}  xpath=(//input[@type='text'])[3]
${custiddata}  //*[@id='content-wrapper']//table/tbody/tr/td[2]/a
${locoiddata}  //*[@id='content-wrapper']//table/tbody/tr/td[3]/a
${statusdata}  //*[@id='content-wrapper']//table/tbody/tr/td[4]/span
${lastcommdata}  //*[@id='content-wrapper']//table/tbody/tr/td[5]
${lastposdata}  //*[@id='content-wrapper']//table/tbody/tr/td[6]
${assodata}  //*[@id='content-wrapper']//table/tbody/tr/td[7]/div
${alertsdata}  //*[@id='content-wrapper']//table/tbody/tr/td[8]
${devicesdata}  //*[@id='content-wrapper']//table/tbody/tr/td[10]
${locoid_unavailable}  //*[@id='content-wrapper']/div[1]/div/div/div[2]/div/systems-list/div/div/div[2]/div[5]/list-table/systems-table/table/tbody/tr/td[2]
${locoidtovalue}  //*[@id='content-wrapper']/div[1]/div/div/div[2]/div/systems-list/div/div/div[1]/header/div/div[3]/div/div/div/filters/form/systems-filters/div[2]/div[2]/div/input




${LoginSubmitField}  id=submitButton
${LoginSubmitField1}  //*[@id='login-box-inner']/div[1]/div/form/div[3]/button
${Edgelinclogo}  id=logo
${technicianrole}  //*[text()='Technician']
${selectrole}  //*[@id='content-wrapper']/div[1]/div/div/div[2]/div/div/form/div/div[1]/div[1]/div[1]/div[3]/tags-input/div/div/input
${rolecountlocator}   //*[@id='content-wrapper']/div[1]/div/div/div[2]/div/div/form/div/div[1]/div[1]/div[1]/div[3]/tags-input/div/auto-complete/div/ul/li
#//div[@id='content-wrapper']/div/div/div/div[2]/div/div/form/div/div/div/div/div[3]/tags-input/div/auto-complete/div/ul/li
${SideBar}  id=sidebar-nav
${MgmntTab_SideBar}  //*[@id='sidebar-nav']//*[text()='Management']
${DeviceMgmntTab_SideBar}  //*[@id='sidebar-nav']//*[text()='Device Mgmt']
${LocomotiveMgmntTab_SideBar}  //*[@id='sidebar-nav']//*[text()='Locomotive Mgmt'] 
${TemplateMgmntTab_SideBar}  //*[@id='sidebar-nav']//*[text()='Template Mgmt']
${Interfacetype}  //*[@id='interfaceType']
${Templatetype}  //*[@id='templateType']
${Newtemplatebutton}  //*[@id='content-wrapper']/div[1]/repository-packages-list/div/div[2]/div[3]/div/icon-box[2]/button[2]
${Additionaltemplatetype}  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[1]/list-table/table/tbody[1]/tr[1]/td[2]
${Selectedtemplatetype}   //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[2]/div/div[1]/list-table/table/tbody/tr[1]/td[2]
${Additionaltemplatenumver}  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[1]/list-table/table/tbody[1]/tr[1]/td[3]
${Selectedtemplatenumver}  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[2]/div/div[1]/list-table/table/tbody/tr[1]/td[3]
${Additiontemplatedesc}  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[1]/list-table/table/tbody[1]/tr[1]/td[4]
${Selectedtemplatedesc}  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[2]/div/div[1]/list-table/table/tbody/tr[1]/td[4]
${selectedtemplatemsgline1}  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[2]/span/p[1]
${selectedtemplatemsgline2}  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[2]/span/p[2]
${selectedtemplatecheckbox}  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[2]/div/div[1]/list-table/table/tbody/tr[1]/td[1]/input
${removetemplatesbutton}  //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[2]/div/div[2]/button
${searchclearbutton}  //div[@id='content-wrapper']/div/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div/div/div[2]/div[2]/button
${Templatesearch}  xpath=(//input[@type='text'])[3]
${rowLocator}  //*[@id='content-wrapper']/div[1]/div/div[2]/create-qnx-package/form/ng-form/div[4]/create-qnx-specific-commissioning-package/div/div[3]/additional-commissioning-temp/div/div/div/div[1]/list-table/table/tbody[1]/tr
${MyProfileTab}  //li[2]/a/span
${LogoutLink}  link=Logout
${AddDevices_DeviceMgmt}  xpath=(//button[@type='button'])[4]
${SelectUplincGateway_DeviceMgmt}  css=option[value="string:UpLINCGateway"]
${SelectSerialNumber_DeviceMgmt}  //input[@type='number']
${SaveBtn_DeviceMgmt}  //input[@value='Save']
${SelectQNXGateway_DeviceMgmt}  css=option[value="string:QNX Gateway"]
${LocoID_DeviceMgmt}  name=locoId 
${CustID_DeviceMgmt}  //*[@id='content-wrapper']//div[1]/div[2]/div/select
${DeviceLCV_DeviceMgmt}  css=option[value="string:LCV"]
${AntennaMfgLCV-WirelessMatrix_DeviceMgmt}  css=option[value="string:Wireless Matrix"]
${AntennaModelLCV-GE MBS2_DeviceMgmt}  css=option[value="string:GE MBS2"]
${SuccessMessage_DeviceMgmt}  The Device was successfully created in the system
${SuccessMessagePath_DeviceMgmt}  //*[@id='content-wrapper']//add-devices-group-operation-summary/div[1]
${DeleteBtn_DeviceMgmt}  //*[text()='Delete Devices']
${SearchBox_DeviceMgmt}  xpath=(//input[@type='text'])[4]
${PageViewDrop_DeviceMgmt}  //table/tfoot/tr/td/div[1]/st-custom-page-size/div/select 
${RequestsTab}  //*[@id='Details']//*[contains(a,'Requests')]
${RequestType_Requests_DeviceMgmt}  //*[@id='Details']//span[2]/select
${Submit_Requests_DeviceMgmt}  //*[@id='Details']//*[text()='Submit']
${SARRadioBtn_CommPath_Requests_DeviceMgmt}  //*[@id='Details']//label[1]/input
${CMUIPAddress_Requests_DeviceMgmt}  //*[@id='Details']//label[4]/span[2]/input
${ConfirmIPAddress_Requests_DeviceMgmt}   //*[@id='Details']//label[5]/span[2]/input
${MessageField_Requests_DeviceMgmt}  //*[@id='Details']//mcs-request//*[text()='Close']/ancestor::div/span
${CloseBtn_MessageField_Requests_DeviceMgmt}  //*[@id='Details']//mcs-request//*[text()='Close']
${CommentsSection_Requests_DeviceMgmt}  //*[@id='Details']//textarea
${Statustab}  //*[@id='Details']//*[contains(a,'Status')]
${Controllertab}  //a[contains(text(),'Controller Vigilance')]
