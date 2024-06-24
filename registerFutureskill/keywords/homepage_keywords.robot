*** Settings ***
Resource    ${CURDIR}/../resources/imports.robot

*** Variables ***
${btn_register}    xpath=//button[@class='w-[76px] h-[30px] md:w-[135px] md:h-[45px] text-center bg-primaryFS-500 text-white rounded-2xl md:p-2 text-[12px] md:text-[16px] font-semibold hidden md:block']

*** Keywords ***
Go to register page
    Click Button    ${btn_register}