*** Settings ***
Library  SeleniumLibrary






*** Variables ***
${url}  https://demo.nopcommerce.com/




*** Test Cases ***
orange
    Open Chrome  ${url}
    execute javascript   window.scrollTo(0,1500)



*** Keywords ***


Open Chrome
    [Arguments]    ${url}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size  1024  768
    Go To    ${url}
#    Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
#     GO TO      ${url}
#    MAXIMIZE BROWSER WINDOW