*** Settings ***
Library  SeleniumLibrary






*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  https://www.google.com



*** Test Cases ***
orange
    key
#    input text    xpath://input[@id='txtUsername']   Admin
#    input text    xpath://input[@id='txtPassword']   admin123
#    click button  xpath://input[@id='btnLogin']




*** Keywords ***
key
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
     MAXIMIZE BROWSER WINDOW
     Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${browser}
#     close browser
       close all browsers

