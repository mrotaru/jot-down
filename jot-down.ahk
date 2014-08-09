; Make a quick note

IniRead, Editor, config.ini, Main, Editor, notepad.exe
IniRead, MultiKeyTime, config.ini, Main, MultiKeyTime, 400

#j::
if key_presses > 0 ; SetTimer already started, so we log the keypress instead.
{
    key_presses += 1
    return
}

key_presses = 1
SetTimer, KeyPress, %MultiKeyTime% ; Wait for more presses within a 400 millisecond window.
return

KeyPress:
SetTimer, KeyPress, off
FormatTime, Today,, yyyy-MM-dd
FileName = %A_WorkingDir%\%Today%.md
if key_presses = 1 ; The key was pressed once.
{
    InputBox, UserInput, Jot Down, , , 300, 100
    if not ErrorLevel
    {
        FormatTime, Time,, HH:mm
        FileAppend, %Time%: %UserInput% `n, %FileName%
    }
}
else if key_presses = 2 ; The key was pressed twice.
{
    Run, %Editor% %FileName%
}
key_presses = 0
return
