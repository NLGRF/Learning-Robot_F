*** Settings ***
Library         Selenium2Library
Test Setup      op Browser
Test Teardown   Close All Browsers
Suite Setup     Log to console  Hello World
Suite Teardown  Log to console  Goodbye!!!
*** Variables ***
${URL}  https://pantip.com/
${BROWSER}  gc
${MESSAGE}  I'm working
*** Keywords ***
op Browser
  Open Browser  ${URL}  ${BROWSER}
  Log to console  ${MESSAGE}
*** Test Cases ***
click Tags
  Click Element  //*[@id="main-body-content"]/div[1]/div/div/div[2]/ul[1]/li[3]/a
  Location Should Be  https://pantip.com/tags