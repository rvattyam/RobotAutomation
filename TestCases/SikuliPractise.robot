*** Settings ***

Library    SikuliLibrary    mode=NEW



*** Test Cases ***

TC121 Start Browser on Windows
    start sikuli process
    Add Image Path    ../Resources/Sikuli_Images

    Click    WinSearchBar.png
    Click    googleChrome.png

    Input Test    URLarea.png    https:google.com


