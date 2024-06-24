*** Settings ***
Resource    ${CURDIR}/../resources/imports.robot

*** Variables ***
${btn_register}    xpath=//button[@class='w-[76px] h-[30px] md:w-[135px] md:h-[45px] text-center bg-primaryFS-500 text-white rounded-2xl md:p-2 text-[12px] md:text-[16px] font-semibold hidden md:block']

*** Keywords ***
Open FutureSkill website
    Open Browser    ${futureskill_url}    gc
    Maximize Browser Window

Input Text To Element When Ready
    [Arguments]    ${location}    ${text}  
    Wait until element is visible    ${location}    5s
    Input Text    ${location}    ${text}