*** Settings ***
Library  SeleniumLibrary
Resource   ../keywords/loginkeyword.robot
Test Setup   Open My Browser   ${url}


*** Variables ***

${url}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${user}    Admin
${pwd}     admin123

*** Test Cases ***
Login Test
   # Open My Browser   ${url}
    Enter username    ${user}
    Enter password    ${pwd}
    Click login
    Verify Login

