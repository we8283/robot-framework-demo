*** Settings ***
Documentation  测试关键字Demo
Library  ./kaiTest1.py

*** Test Cases ***
测试用例1
    ${aa}=    sum     3    5
    Should Be Equal    ${aa}    35
    Log    ${aa}     console=true
    &{bb} =     test Dic
    log    &{bb}[bb]
    should be equal    &{bb}[bb]  12131   不同打印日志

测试用例2
    ${ff} =     返回的 Demo1    3         5
    should be equal    ${ff}    35    不同打印日志

测试用例3
    &{dic}=  有返回的Demo2
    should be equal  &{dic}[aaa]  dasda

*** keywords ***
返回的Demo1
    [arguments]  ${arg1}    ${arg2}
    # sum           3          5
     ${val}=   su m    ${arg1}    ${arg2}
     [return]  ${val}

有返回的Demo2
    &{dic}=    test Dic
    [return]  &{dic}