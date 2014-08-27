# Jot Down
Quickly jot down ideas that pop into your head, before they're gone forever.

## How To Use
Download the executable, and double-click it. It will start running in the
background and listening for the `Windows + J` key combination. When it is
pressed, a simple input box will appear. Then, simply write your quick note and
press Enter to save it, or `Esc` to cancel.


## File Location
Jot Down appends your notes to a file in the same folder as the executable. So,
if you place jot-down.exe in C:\notes and make a note, then a new file will be
created - C:\notes\2014-07-31.md, for example. The text you entered in the
input box will be prefixed with the current time and appended to this file.

If the file does not exist, it will be created. A separate file is created for
each day.

Pressing `Windows + J` twice will open today's file.

## Config File
At startup, `jot-down` will look for `config.ini` in the current directory.

### Settings

- `Editor` - program to use when `Windows + J` is pressed twice. Default: `notepad.exe`
- `MultyKeyTime` - milliseconds to wait for second `Windows + J`. Default: `400`

## Run At Startup
You can make jot-down.exe run every time you turn on the computer by following
the instructions [here](
http://windows.microsoft.com/en-gb/windows/run-program-automatically-windows-starts#1TC=windows-7).
