*** Settings ***
Library  SeleniumLibrary






*** Variables ***
${url}  https://demo.nopcommerce.com/register?returnUrl=%2F




*** Test Cases ***
orange
    key
    select radio button    Gender       F




*** Keywords ***
key
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
    MAXIMIZE BROWSER WINDOW
