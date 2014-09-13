# Jot Down
Quickly jot down ideas that pop into your head, before they're gone forever.

## How To Use
Download the executable, and double-click it. It will start running in the
background and listening for the `Windows + J` key combination. When it is
pressed, a simple input box will appear. Then, simply write your quick note and
press Enter to save it, or `Esc` to cancel.

## File Location
By defaylt, `jot-down` appends your notes to a file in the same folder as the
executable. So, if you place `jot-down` in C:\notes and make a note, then a new
file will be created - C:\notes\notes.txt.  If the file does not exist, it will
be created.

Pressing `Windows + J` twice will open today's file.

## Config File
At startup, `jot-down` will look for `config.ini` in the current directory.

### Settings

- `Editor` - program to use when `Windows + J` is pressed twice. Default: `notepad.exe`
- `MultyKeyTime` - milliseconds to wait for second `Windows + J`. Default: `400`
- `Timestamp` - add a timestamp before each note. Default: `0`; set to `1` to enable timestamps.
- `TimestampFormat` - format of timestamp. Default: `HH:mm`
- `FileLocation` - note file location. Default: same folder as `jot-down.exe`
- `FileName` - name of notes file. Default: `jot-down`
- `FileNameTimestampFormat` - if set, will be used instead of `FileName`. Default: `yyyy-MM-dd`
- `FileExtension` - extenstion to append to file name. Default: `txt`
- `TriggerHotkey` - whick key, in combination with `Windows`, triggers `jot-down`. Default: `j`

## Run At Startup
You can make jot-down.exe run every time you turn on the computer by following
the instructions [here](
http://windows.microsoft.com/en-gb/windows/run-program-automatically-windows-starts#1TC=windows-7).
