**** settings ***

Library    SeleniumLibrary
Variables    ../TestData/Datafile.py

*** Keywords ***

Open my Browser

    Open Browser    ${site}    ${browser}
    Maximize Browser Window

Close My Browser

    Close All Browsers


