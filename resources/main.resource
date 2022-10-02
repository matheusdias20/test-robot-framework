*** Settings ***
Documentation    Arquivo Principal do projeto

Library    Browser

Resource    pages/login.resource
Resource    pages/dash.resource


*** Keywords ***
Do Login
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    Button Login
    User Logged In

Start Test
    New Browser    headless=false


Finish Test
    
    #Thinking Time
    Sleep            1
    Take Screenshot