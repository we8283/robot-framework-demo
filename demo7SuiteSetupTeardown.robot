*** Settings ***
Library  ./kaiTest1.py
Suite Setup  suite setup demo  ${aa}  ${bb}
Suite Teardown  suite teardown demo

*** Variables ***
${aa}  1
${bb}  2

*** Test Cases ***
setup Demo
        should be equal   ${config}    ${3}

*** keywords ***
Suite setup demo
    [Arguments]  ${arg1}  ${arg2}
    ${val}=  sum  ${${aa}}  ${${bb}}
    set suite variable     ${config}       ${val}

Suite teardown demo
    Log  ============\n${config}   console=true
    set suite variable     ${config}      0
    Log  ============\n${config}  console=true