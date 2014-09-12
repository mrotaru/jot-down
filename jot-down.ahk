; Make a quick note

IniRead, Editor, config.ini, Main, Editor, notepad.exe
IniRead, MultiKeyTime, config.ini, Main, MultiKeyTime, 400
IniRead, TimestampFormat, config.ini, Main, TimestampFormat, HH:mm
IniRead, Timestamp, config.ini, Main, Timestamp, 0
IniRead, FileLocation, config.ini, Main, FileLocation, %A_WorkingDir%
IniRead, FileName, config.ini, Main, FileName, jot-down
IniRead, FileExtension, config.ini, Main, FileExtension, txt
IniRead, TriggerHotkey, config.ini, Main, TriggerHotkey, j

Hotkey, #%TriggerHotkey%, check
return

check:
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

if FileNameTimestampFormat {
    FormatTime, _FileNameTimestampFormat,, yyyy-MM-dd
    FileNameFull = %FileLocation%\%_FileNameTimestampFormat%.%FileExtension%
} else {
    FileNameFull = %FileLocation%\%FileName%.%FileExtension%
}

if key_presses = 1 ; The key was pressed once.
{
    InputBox, UserInput, Jot Down, , , 300, 100
    if not ErrorLevel
    {
        if Timestamp {
            FormatTime, Time,, %TimestampFormat%
            FileAppend, %Time%: %UserInput% `n, %FileNameFull%
        } else {
            FileAppend, %UserInput%`n, %FileNameFull%
        }
    }
}
else if key_presses = 2 ; The key was pressed twice.
{
    Run, %Editor% %FileName%
}
key_presses = 0
return
