*** Settings ***
Library   Remote   http://127.0.0.1:9999

*** Test Cases ***
远程Demo
     ${val}=  plus   ${2}   ${3}
     should be equal  ${val}   ${5}