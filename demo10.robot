*** Settings ***
Documentation     resource demo
Resource  demo.robot
Library  ./kaiTest1.py

*** Test Cases ***
测试用例1
     [Documentation]  测试本地Library
     ${val}=  demo  ${1}   ${3}
     should be equal  ${val}    ${4}
