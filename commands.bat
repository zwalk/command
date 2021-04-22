@echo off
DOSKEY command=IF NOT [$1] == [] (C:\Users\walkez5\commands.bat $*)

IF [%1] == [set] GOTO ReadInput 
IF [%1] == [-s] GOTO ReadInput 
EXIT /B

:ReadInput
IF [%1] == [set] GOTO Set
IF [%1] == [-s] GOTO Set

:Set
IF NOT [%2] == [] ( IF NOT [%3] == [] ( ECHO.>>C:\Users\walkez5\commands.bat DOSKEY %2=%~3>>C:\Users\walkez5\commands.bat))

::Shortcuts added below this line