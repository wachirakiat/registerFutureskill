*** Settings ***
Library         SeleniumLibrary

Variables       ${CURDIR}/data/data_test.yaml

Resource        ${CURDIR}/../keywords/common_keywords.robot
Resource        ${CURDIR}/../keywords/homepage_keywords.robot
Resource        ${CURDIR}/../keywords/register_keywords.robot