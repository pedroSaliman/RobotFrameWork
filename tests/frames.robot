*** Settings ***
Library  SeleniumLibrary






*** Variables ***
${url}  https://the-internet.herokuapp.com/iframe




*** Test Cases ***
orange
    key
    set selenium speed      1 seconds
    select frame         xpath://iframe[@id='mce_0_ifr']
    clear element text   css:#tinymce
    input text           css:#tinymce             good




*** Keywords ***
key
    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
    MAXIMIZE BROWSER WINDOW