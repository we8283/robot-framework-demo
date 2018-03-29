*** Settings ***
Documentation  resource demo

*** Keywords ***
demo
    [Arguments]  ${arg1}  ${arg2}
    ${val}=  sum         ${arg1}  ${arg2}
    [Return]  ${val}
