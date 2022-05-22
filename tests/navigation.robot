*** Settings ***
Library  SeleniumLibrary






*** Variables ***
${url}  https://the-internet.herokuapp.com/windows
${browser}  https://www.google.com




*** Test Cases ***
orange
    key





*** Keywords ***
key
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
    MAXIMIZE BROWSER WINDOW
    go to       ${browser}
    go back
