*** Settings ***
Documentation       Stockbit Login Tests
Resource            ../pages/landing_page.robot
Resource            ../pages/login_page.robot
Resource            ../steps/login_steps.robot

*** Variables ***
${validUsername}    your_valid_username
${validPassword}    your_valid_password

*** Test Cases ***
Scenario: Valid login credential
    Given Login page opened
    When User input username and password   ${validUsername}    ${validPassword}
    And Click login button
    Then User directed to home page