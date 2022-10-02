*** Settings ***
Documentation    Login Page

Library    Browser


*** Keywords ***

Go To Login Page
    New Page       https://trade-sticker-dev.vercel.app


Button Login
    Click          button >> text=Entrar 

Submit Credentials
    [Arguments]    ${email}    ${password}
    Fill Text      input[name=email]        ${email}
    Fill Text      input[name=password]     ${password} 


Toast Message Should Be
    [Arguments]    ${expected_message}
    ${locator}    Set Variable    css=.Toastify__toast-body div >> text=${expected_message}
    
    Wait For Elements State       ${locator}    visible    3


Submit Credentials Only Email
    [Arguments]    ${email}
    Fill Text      input[name=email]        ${email}


Submit Credentials Only Password
    [Arguments]    ${password}
    Fill Text      input[name=password]        ${password}
