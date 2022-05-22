*** Settings ***
Library  SeleniumLibrary






*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/




*** Test Cases ***
orange
    key
    title should be  OrangeHRM
    set selenium speed      1 seconds
    input text    xpath://input[@id='txtUsername']   Admin
    ${username}     set variable   xpath://input[@id='txtUsername']
    element should be visible  ${username}
    input text    xpath://input[@id='txtPassword']   admin123
    click button  xpath://input[@id='btnLogin']




*** Keywords ***
key
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
    MAXIMIZE BROWSER WINDOW
