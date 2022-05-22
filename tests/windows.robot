*** Settings ***
Library  SeleniumLibrary






*** Variables ***
${url}  https://the-internet.herokuapp.com/windows




*** Test Cases ***
orange
    key
   click element    css:a[href='/windows/new']
   Switch Window     title=New Window
   ${message}       set variable   css:div[class='example'] h3
   element text should be    ${message}       New Window




*** Keywords ***
key
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
    MAXIMIZE BROWSER WINDOW