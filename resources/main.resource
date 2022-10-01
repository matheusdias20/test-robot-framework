*** Settings ***
Documentation    Arquivo Principal do projeto

Library    Browser

Resource    pages/login.resource
Resource    pages/dash.resource


*** Keywords ***
Do Login
    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In

Start Test
    New Browser    headless=false


Finish Test
    Take Screenshot