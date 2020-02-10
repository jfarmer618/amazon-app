*** Settings ***


*** Variables ***


*** Test Cases ***
FOR Loop with Upper Bounds Range
    [Tags]  Loops
    FOR  ${index}  IN RANGE  5
        Do Something  ${index}
    END

FOR Loop with Start and Finish Range
    [Documentation]  Loop through specified range
     [Tags]  Loops
    FOR  ${index}  IN RANGE  1   21
        Do Something  ${index}
    END

For Loop with Start, Finish and Step Range
    [Documentation]  The counter will jump by specified step each time
    FOR  ${index}  IN RANGE  1  11  2
        Do Something  ${index}
    END

For Loop with List
    @{ITEMS} =  create list  Item 1  Item 2  Item 3
    FOR  ${item}  IN  @{ITEMS}
        Log  ${item}
    END

Exit a For Loop
    @{ITEMS} =  create list  Item 1  Item 2  Item 3  Item 4
    FOR  ${item}  IN  @{ITEMS}
        Log  ${item}
        RUN KEYWORD IF  "${item}" == "Item 3"  Exit For Loop
        Log  Didn't exit yet
     END
     Log  Now we're out of the loop

Repeat a keyword specified times
    repeat keyword  5  A Repeatable Keyword


*** Keywords ***
A Repeatable Keyword
    Log  Repeated Keyword
Do Something
    [Arguments]  ${value}
    Log  ${value}