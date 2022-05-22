*** Settings ***
Library  SeleniumLibrary
Variables  ../resources/orangelogin.py





*** Keywords ***


Open My Browser
    [Arguments]   ${url}
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
     MAXIMIZE BROWSER WINDOW

Enter username
    [Arguments]   ${theusername}
    input text     ${username}      ${theusername}


Enter password
    [Arguments]   ${thepassword}

    input text     ${password}     ${thepassword}



Click login

    click button    ${logbtn}



Verify Login

    title should be    OrangeHRM