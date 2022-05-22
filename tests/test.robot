*** Settings ***

Library  SeleniumLibrary




*** Variables ***
${url}  https://www.google.com





*** Test Cases ***
testlogin
    key

    ##Go To    https://www.google.com/   chrome
    ## Create Webdriver    Chrome    executable_path=C:\Users\LORD TRADE\AppData\Roaming\Python\Python39\Scripts\chromedriver.exe
   ## Evaluate    chromedriver_binary.add_chromedriver_to_path()     modules=chromedriver_binary
   ## OPEN BROWSER  https://www.google.com/   chrome
*** Keywords ***
key
     Create Webdriver    Chrome    executable_path=C:/Users/LORD TRADE/AppData/Roaming/Python/Python39/Scripts/chromedriver.exe
     GO TO      ${url}
    MAXIMIZE BROWSER WINDOW
