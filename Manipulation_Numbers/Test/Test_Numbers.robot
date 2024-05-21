*** Settings ***
Library    BuiltIn

*** Variables ***
${NUMBER1}    1
${NUMBER2}    2

*** Test Cases ***
Log and Sleep Example
    [Documentation]    Example of logging and pause.
    Log    This is a log message
    Sleep    3s

Check Equality Example
    [Documentation]    Check the equality of two numbers.
    Should Be Equal    ${NUMBER1}    1
    Should Be Equal    ${NUMBER2}    2

Conditional Keyword Example
    [Documentation]    Executes a keyword conditionally.
    ${is_greater}=    Evaluate    ${NUMBER2} > ${NUMBER1}
    Run Keyword If    ${is_greater}    Log    ${NUMBER2} is greater than ${NUMBER1}

Set and Get Global Variable Example
    [Documentation]    Defines and retrieves a global variable.
    Set Global Variable    ${GLOBAL_VAR}    This is a global variable
    ${global_value}=    Get Variable Value    ${GLOBAL_VAR}
    Log    ${global_value}
