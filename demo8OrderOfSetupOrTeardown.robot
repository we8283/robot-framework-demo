*** Settings ***
Suite Setup  check order  \nSuite Setup
Suite Teardown  check order  \nSuite Teardown
Test Setup  check order  \nTest Setup
Test Teardown  check order  \nTest Teardown

*** Test Cases ***
用例1
    [setup]  check order  \n用例1 setup
    log  HHHHHHHHHHHHHHHHHHHHHHH
    [teardown]  check order  \n用例1 teardown

用例2
    [setup]  check order  \n用例2 setup
    log  HHHHHHHHHHHHHHHHHHHHHHH
    [teardown]  check order  \n用例2 teardown

用例3
    log  HHHHHHHHHHHHHHHHHHHHHHH


*** keywords ***
check order
             [Arguments]  ${arg}
             Log          ${arg}    console=true