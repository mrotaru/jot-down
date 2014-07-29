; Make a quick note

#n::
InputBox, UserInput, Jot Down, , , 300, 100
if not ErrorLevel
    FormatTime, Today,, yyyy-MM-dd
    FormatTime, Time,, HH:mm
    FileName = %A_WorkingDir%\%Today%.md
    FileAppend, %Time%: %UserInput% `n, %FileName%
