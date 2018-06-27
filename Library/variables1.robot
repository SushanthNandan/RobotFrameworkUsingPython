*** Variables ***
${URL}  https://ldars-rui-qa2.tms.ad.trans.ge.com
${URL1}  https://ldars-rui-qa.tms.ad.trans.ge.com
${edgelincURL}  http://ui-dev-edgelinc.trans.ge.com

${BROWSER}  chrome
${LoginName}  prox_admin
#prox_admin2@chi-ldars.net
${Password}  pf@5ecret
${EdgeLoginName}  zone2_admin
${EdgePassword}  pf@5ecret

#Change11$me
${SerialNumberIncorrect}  412563
${uplincagent}  UpLINCAgent
${deviceserialnumbervalue}  161000879
${devicetypevalue}  WCM
${adddevicesuccessmessage_expected}  The following device was added to the inventory.
${devicedeletionsuccessmessage_expected}  Selected devices were successfully deleted.
${nodevicemessageexpected}  No devices to display
${locounavailablemessage_expected}  No system in the setup
${custidvalue}  BLE
${addlocoidvalue}  893
${locoidvalue}  14
${InvalidLoco}  412563
${ValidLoco}  899
${locostatusvalue_expected}  Operational - no alerts 
${devicestatusvalue_expected}  Operational - no alerts
${devicestab_devicevalue}  SMM
${username}  testtech9992
${email}  testtech9992@gmail.com
${expectedrolevalue}  Technician
${users_passwordvalue}  Murugan@123ge
${confirmpassword}  Murugan@123ge

${ZoomIN}  document.body.style.zoom = '0.75'
${ZoomOUT}  document.body.style.zoom = '1.00'
${ScrollDown}  window.scrollTo(0,document.body.scrollHeight)
${errormsg}  The field Stop After only accepts integers between 0 and 255.
${expecteddescmsg}  Special characters were found in your input, please be aware that single quote (') and brackets (< or >) are not allowed.
${empexpectedmsg}  The field EMP Network Address only accepts string in format *.*:*.*.
${gatewayexpectedmsg}  The field Application Gateway Port only accepts integers between 0 and 65535.
${selectedtemplatemsgline1_expectedvalue}  No templates have been selected.
${selectedtemplatemsgline2_expectedvalue}  Please select any additional templates from the left menu and click on Add Templates.
${templatesearchvalue}  1
${expectednumbervalue}  new
${expectedversionvalue}  new
${expectedtemplateversionvalue}  1.1
${ScrollUp}  window.scrollTo(document.body.scrollHeight,0)
${abc}   abc

${QNXLocoID}  123 
${DeviceManagement}  Device Management
${LocomotiveManagement}  Locomotive Management
${TemplateManagement}  Template Management
${QNXGateway}  QNX Gateway
${UpLINCGateway}  UpLINC Gateway
${GolincSerialNumber_20}  161000561 
${Technician}  prox_admin2
${AssociationDate}  10-25-2017 04:42:16 PM
${ActivationCode}  PE225B
${ForceRegistration_RequestType_Requests_DeviceMgmt}  Force Registration
${ConfigurationVigilanceRequest_RequestType_Requests_DeviceMgmt}  Configuration Vigilance Request
${LDVRDataRequest_RequestType_Requests_DeviceMgmt}   LDVR Data Request
${LDVRMediaRequest_RequestType_Requests_DeviceMgmt}   LDVR Media Request
${LDVRPreservation/DownloadRequest_RequestType_Requests_DeviceMgmt}  LDVR Preservation/Download Request
${LDVRRemoteStop/StartRequest_Requests_DeviceMgmt}   LDVR Remote Stop/Start Request
${MCONStatusRequest_RequestType_Requests_DeviceMgmt}   MCON Status Request
${RebootRequest_RequestType_Requests_DeviceMgmt}   Reboot Request

*** Variables ***
${HOST}                   3.132.236.209
${UplincUserId}           uplincgateway
${UplincPass}             1k0D1j3T
${UIUserId}               prox_admin2@chi-ldars.net
${UIPassword}             Change11$me
${AgentConfigField}       event.mgmt.sw.ver.change.interval
${AgentConfigFieldValue}  99

#xpaths
${mainSearchBar}          //button[contains(text(),'Clear')]/../..//input

#templates
${templateName}           ldars_classcinterface_1.3.1.tar.gz    
${templateNickname}       classc
