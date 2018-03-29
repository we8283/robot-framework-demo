*** Settings ***
Documentation  测试Timeout demo
...
Test Timeout  6
Default Tags  aabc

*** Test Cases ***
timeout demo
    [Documentation]  timeout demo
    [Timeout]  3
    sleep  4
    should be equal  1  1

timeout demo2
    should be equal  1  1
    sleep  9