*** Settings ***
Resource    ${CURDIR}/../resources/imports.robot

*** Test Cases ***
Register FutureSkill
    Open FutureSkill website
    Go to register page
    Input email  test@aa.com
    Input first name  Wachi
    Input last name  Nithi
    Input phone number  0958751536
    Input new password  P@01word
    Input confirm password  P@01word
    Click accept consent
    Click register button
    OTP message should be displayed