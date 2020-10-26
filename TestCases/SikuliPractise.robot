*** Settings ***

Library    SikuliLibrary    mode=NEW



*** Test Cases ***

TC121 Start Browser on Windows
    start sikuli process
    Add Image Path    C:/Users/vatty/Desktop/Interview Preparation/Sikuli/ImagePath
    Click    WinSearchBar.png
    Input Test    WinSearchBar.png    chrome
    Click    googleChrome.png

    Input Test    URLarea.png    https:google.com


