*** Variables ***
@{var1}    ${1}  ${2}  ${3}  ${4}
${var2}    abc
${var21}   ${True}
${var22}   ${None}
${var23}   ${2e+1}    #RFT 有bug,复数必须在第一位
&{var3}    aa=${11}  bb=${22}  cc=${33}

*** Test Cases ***
数组测试用例
    [Documentation]  测试数组变量
    should not be equal  @{var1}[0]  1   如果不同，显现结果
    should be equal  @{var1}[1]  ${2}   如果不同，显现结果
    should be equal  @{var1}[2]  ${3}   如果不同，显现结果
    should be equal  @{var1}[3]  ${4}   如果不同，显现结果

变量测试用例
    [Documentation]  测试变量
    should be equal  ${var2}  abc  如果不同，显现结果
    should be true  ${var21}   如果不同，显现结果
    should be equal  ${var22}  ${None}  如果不同，显现结果
    should be equal  ${var23}  ${2e+1}  如果不同，显现结果

字典测试用例
     [Documentation]  测试字典变量
     Log   &{var3}[aa]  console=true
     should be equal  ${&{var3}[aa]+&{var3}[bb]}  ${33}   如果不同，显现结果