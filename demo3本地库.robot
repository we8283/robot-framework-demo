*** Settings ***
Documentation  测试本地库library
Library  ./kaiTest1.py

*** Test Cases ***
测试用例1
     [Documentation]  测试本地Library
     ${val}=  s u m   ${1}   ${3}
     should be equal  ${val}    ${4}
