*** Settings ***
Resource    ${CURDIR}/../resources/imports.robot

*** Variables ***
${register_page.txt_email_input}                xpath=//input[@name='email']
${register_page.txt_firstName_input}            xpath=//input[@name='firstName']
${register_page.txt_lastName_input}             xpath=//input[@name='lastName']
${register_page.txt_phoneNumber_input}          xpath=//input[@name='phoneNumber']
${register_page.txt_password_input}             xpath=//input[@name='newPassword']
${register_page.txt_confirmPassword_input}      xpath=//input[@name='confirmPassword']
${register_page.checkbox_consent}               xpath=//input[@name='consent']
${register_page.btn_register}                   xpath=//button[@class='css-1odomef e10241nq0']
${expected_text}                                ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์


*** Keywords ***
Input email
    [Documentation]    Input email to email text box
    [Arguments]    ${email}
    Input Text To Element When Ready    ${register_page.txt_email_input}    ${email}

Input first name
    [Documentation]    Input first name to firstName text box
    [Arguments]    ${firstName}
    Input Text To Element When Ready    ${register_page.txt_firstName_input}    ${firstName}

Input last name
    [Documentation]    Input last name to lastName text box
    [Arguments]    ${lastName}
    Input Text To Element When Ready    ${register_page.txt_lastName_input}    ${lastName}

Input phone number
    [Documentation]    Input phone number to phoneNumber text box
    [Arguments]    ${phoneNumber}
    Input Text To Element When Ready    ${register_page.txt_phoneNumber_input}    ${phoneNumber}

Input new password
    [Documentation]    Input new password to newPassword text box
    [Arguments]    ${newPassword}
    Input Text To Element When Ready    ${register_page.txt_password_input}    ${newPassword}

Input confirm password
    [Documentation]    Input confirm password to confirmPassword text box
    [Arguments]    ${confirmPassword}
    Input Text To Element When Ready    ${register_page.txt_confirmPassword_input}    ${confirmPassword}

Click accept consent
    [Documentation]    Select checkbot for accept consent
    Select Checkbox    ${register_page.checkbox_consent}

Click register button
    [Documentation]    Click register button on register page
    Click Button    ${register_page.btn_register} 

OTP message should be displayed
    Wait Until Keyword Succeeds  5x  2s  Page Should Contain    ${expected_text}

    
