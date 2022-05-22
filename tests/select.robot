*** Settings ***
Library  SeleniumLibrary






*** Variables ***
${url}  https://demo.nopcommerce.com/




*** Test Cases ***
orange
    key
    select from list by index   customerCurrency       1



*** Keywords ***
key
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
    MAXIMIZE BROWSER WINDOW