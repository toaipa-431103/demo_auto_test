*** Settings ***
Library     ../MyLibrary.py

*** Test Cases ***
Demo_Python_Keyword
    ${result}   Add two numbers    3    5
    Log    The result is: ${result}

Test_GitHub
    Log to console    test github
    Log to console      create confict by function_abc
    log to console  fix conflict