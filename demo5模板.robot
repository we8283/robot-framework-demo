*** Settings ***
Library  ./kaiTest1.py

*** Test Cases ***
正常的测试用例
    The result of 1 and 1 should be 2
    The result of 1 and 2 should be 3
    The result of 3 and 4 should be 6

模板测试用例
    [Template]    The result of ${var1} and ${var2} should be ${expected}
    1   1    2
    1   2    3
    3    4   6

*** Keywords ***
The result of ${var1} and ${var2} should be ${expected}
    ${result} =  sum   ${${var1}}   ${${var2}}
    Should Be Equal    ${result}     ${${expected}}