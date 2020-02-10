*** Settings ***


*** Variables ***
${x} =  10

*** Test Cases ***
If condition is true
    run keyword if  ${x} == 10  It is true

If condition is false
    run keyword if  ${x} > 10  It is false

If condition is false with else
    run keyword if  ${x} > 10  It is false
    ...  ELSE  Do else

If condition with else if
    RUN KEYWORD IF  ${x} > 10   It is false
    ...  ELSE IF  ${x} == 100   It is false
    ...  ELSE  It is false 2nd

*** Keywords ***
It is true
    Log  Condition is true

It is false
    Log  Condition is false

Do else
    Log  Else was executed

It is false 2nd
    log  2nd Else was executed