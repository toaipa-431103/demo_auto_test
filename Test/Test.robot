*** Settings ***
Library     ../MyLibrary.py

*** Test Cases ***
Demo_Python_Keyword
    ${result}   Add two numbers    3    5
    Log    The result is: ${result}