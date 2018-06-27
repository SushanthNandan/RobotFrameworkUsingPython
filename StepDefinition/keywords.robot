*** Keywords ***
Edit Agent Config File
    [Arguments]    ${AgentConfigField}=default  ${AgentConfigFieldValue}=default

    
    Write  cd /etc/resin-supervisor/resin-data/containers/1/configuration/machine
    ${command}=  Catenate  sed -i 's/${AgentConfigField}.*/${AgentConfigField}=${AgentConfigFieldValue}/' com.proximetry.ge.ldars.LdarsAgent.cfg
    Log to Console  ${command}
    Write  ${command}
    

    
    
Login LDARS ADFS
    #${proxy}=	Evaluate	sys.modules['selenium.webdriver'].Proxy()	sys, selenium.webdriver
    #${proxy.http_proxy}=	Set Variable	localhost:8888	
    #Create Webdriver	Firefox	proxy=${proxy}
    #Go To  https://ldars-rui-qa2.tms.ad.trans.ge.com/
    #Open Browser  https://ldars-rui-qa2.tms.ad.trans.ge.com/  ff  
    Open Browser  https://ldars-rui-qa2.tms.ad.trans.ge.com/  chrome
    Maximize Browser Window
    Wait Until Page Contains Element  //span[@id='submitButton']  timeout=45 seconds 
    Input Text  //*[@id='userNameInput']  ${UIUserId}
    Input Text  //*[@id='passwordInput']  ${UIPassword}
    Click Element  //*[@id='submitButton'] 
    Wait Until Page Contains Element  //span[text()='Locomotives']  timeout=300 seconds 
    
Login LDARS Non-ADFS
    Open Browser  https://ldars-rui-qa2.tms.ad.trans.ge.com/  chrome
    Maximize Browser Window
    Wait Until Page Contains Element  //button  timeout=33 seconds 
    Input Text  //input[@type='text']  prox_admin
    Input Text  //input[@type='password']  pf@5ecret
    Click Element  //button[@type='submit']
    Wait Until Page Contains Element  //span[text()='Locomotives']  timeout=140 seconds 
    
Open Connection and login 
    [Arguments]  ${deviceUserId}=uplincgateway    ${devicePass}=1k0D1j3T  ${port}=223  ${root}=Y 
    ${alias}=  Catenate  ${HOST}:${port}
    lOG TO CONSOLE  HERE
    Open Connection    ${HOST}  port=${port}  timeout=50 seconds  alias=${alias}
    Login    ${deviceUserId}    ${devicePass}  
    lOG TO CONSOLE  HERE
    Run Keyword If  '${root}' == 'Y'  Run Keywords
    ...    Write  sudo su
    ...    AND
    ...    Write  ${devicePass}
    
CtrlC
    ${crtl_c}                Evaluate        chr(int(3)) 
    SSHLibrary.Write Bare        ${crtl_c}
    
Parse MQTT output
    [Arguments]    ${commandToExecute}=default  ${variableToFetch}=default  
    ${finalCommand}=  Catenate  ${commandToExecute}|grep ${variableToFetch}
    Write  ${finalCommand}
    ${mqttoutput}=  Read  delay= 1.5 seconds
    
    CtrlC
    @{lines}=  Split To Lines  ${mqttoutput}
    ${separator}=  Catenate  ${SPACE}:${SPACE}
    @{linesSplit}=  Split String  @{lines}[0]  ${separator}
    
    [return]  @{linesSplit}[1]

Verification Routine
    

Navigate RUI
    [Arguments]  ${custId}=def  ${locoId}=def  ${tab}=def  ${deviceId}=def
    Input Text  ${mainSearchBar}  ${locoId}
    Sleep  6s
    ${locoListElement}=  Get Text  //systems-table/table/tbody/tr/td[2]
    ${result} =  Run Keyword If  '${locoListElement}'=='No system in the setup'  Set Variable  01
    ...    ELSE  Set Variable  00
    
    #Verification Routine
    :FOR    ${i}    IN RANGE  1  10
    \    ${checkString}=  Catenate  //systems-table/table/tbody/tr[${i}]/td[2]/a 
    \    ${checkCust}=  Get Text  ${checkString}
    \    ${locoresult}=  Run Keyword If  '${checkCust}' == '${custId}'  Exit For Loop
         
       
    ${clickString}=  Catenate  //systems-table/table/tbody/tr[${i}]/td[3]/a 
    
    Click Element  ${clickString}
    Sleep  6s
    
    ${tabString}=  Catenate  //a[text()='${tab}']
    Click Element  ${tabString}

Template Management
    [Arguments]  ${Template}=def  ${Path}=def  ${CustId}=def  ${LocoId}=def; 
    # PART-A
    Sleep  3s
    Click Element  //*[@id='sidebar-nav']/ul/li[2]/a
    Sleep  1s
    Click Element  //*[@id='sidebar-nav']//span[text()='Template Mgmt']
    Sleep  1s
    Click Element  //button[text()='New Template']
    Sleep  4s
    Select From List By Label  //*[@id='templateType']  ${Template}
    Input Text  //*[@id='description']  ${Template}
    Select From List By Label  //*[@id='status']  Approved
    Execute Javascript  var a=document.getElementById('packageFile');a.scrollIntoView(true);
    
    Choose File    //*[@id='packageFile']  ${Path} 
    Click Element  //input[@value='Save']
        
    # PART-B
    Wait Until Page Contains Element  //div[@class='panel-body']  timeout=50 seconds
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    Click Element  //*[text()='Back to Templates']
    Wait Until Page Contains  Template Management
    Sleep  4s  
    
    Input Text  //button[contains(text(),'Clear')]/../preceding-sibling::div//input  ${Template}
    Sleep  4s 
    Click Element  //repository-packages-table/table/tbody/tr[1]/td[1]/input
    Click Element  //*[text()='Apply Template']
    #------------
    Wait Until Page Contains Element  xpath=(//input[@type='text'])[5]  timeout=10 seconds
    #Input Text  xpath=(//input[@type='text'])[5]  ${LocoID}
    Input Text  //*[@id='selectCustomerId']//input  ${CustId}
    Sleep  1s 
    Click Element  //*[@id='selectCustomerId']//auto-complete//li//span 
    #Click Element  //*[@id='selectCustomerId']//input  
    
    Sleep  2s 
    #--------------
    #//systems-filters//label[text()='Loco ID:']/..//input
    
    :FOR    ${i}    IN RANGE  1  10
    \    ${checkString}=  Catenate  //systems-table/table/tbody/tr[${i}]/td[3]/a 
    \    ${checkLoco}=  Get Text  ${checkString}
    \    ${custresult}=  Run Keyword If  '${checkLoco}' == '${LocoId}'  Run Keywords
    \    ...    Click Element  //systems-table/table/tbody/tr[${i}]/td[1]/input 
    \    ...    AND
    \    ...    Exit For Loop
      

    Click Element  //button[text()='Add Locomotives']
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep  1s
    Click Element  //systems-table-custom/table/tbody/tr/td[1]/input
   
    Click Element  //button[text()='Finalize Template']
    Click Element  //button[text()='Apply Template to Locomotives']
    
    Wait Until Page Contains Element  //span[contains(text(),'applied to')]
    Click Element  //span[contains(text(),'applied to')]/../a
    #--------------
    #//span[@role='button']
    
    
Template Version Check [FileName|Nickname]
    [Arguments]  ${name}=def  ${nickName}=def 
    # PART-1A
    @{words1}=  Split String  ${name}  .tar
    ${contains}=  Evaluate   '-' in '@{words1}[0]'
    @{words1hu} =  Run Keyword If  '${contains}'=='True'  Split String  @{words1}[0]  -
    ...    ELSE  Split String  @{words1}[0]  _
    ${versionString}=  Get From List  ${words1hu}  -1
    ${versionStringFinal}=  Fetch from Right  ${versionString}  v

    
    
    # PART-2
    Write  docker ps|grep ${nickName}
    ${dockerps}=  Read  delay= 1.5 seconds
    @{dockerOut}=  Split String  ${dockerps}  :
    @{dockerOutFinal}=  Split String  @{dockerOut}[1]  ${SPACE}
    
    # PART-3
    Run Keyword If  '${versionStringFinal}' == '@{dockerOutFinal}[0]'  Log to Console  They are matching
    ...    ELSE  Run Keywords
    ...    Log to Console  Mismatch
    ...    AND
    ...    Fail
    
    
Logout LDARS
    
    #Execute Javascript  var a=document.getElementById('packageFile');a.scrollIntoView(true);
    
    Execute Javascript  window.scrollTo(0,0)
    Click Element  //span[text()='My profile']
    Wait Until Element Is Enabled  //a[contains(text(),'Logout')]
    Click Element  //a[contains(text(),'Logout')]
    Sleep  3s
    Close All Connections
