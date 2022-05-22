*** Settings ***
Library  SeleniumLibrary






*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/




*** Test Cases ***
orange
    key
    input text    xpath://input[@id='txtUsername']   Admin
    capture element screenshot     xpath://input[@id='txtUsername']   username.png
    input text    xpath://input[@id='txtPassword']   admin123
    click button  xpath://input[@id='btnLogin']





*** Keywords ***
key
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
    MAXIMIZE BROWSER WINDOW