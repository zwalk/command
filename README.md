# command
Batch file that allows you to add a DOSKEY shortcut whenever you feel like using a cool code name or saving time in the command line

## setup
  - clone this repo wherever you please.
  - update the path inside of the :SET function to the path to the commands.bat that you just cloned so that the file can write to itself (it needs set in twice in that function)
  - go to the command line and type "regedit"
    - go to HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor
    - right click below the contents of the Command Processor directory
    - select New > String Value
    - Set Name to "Autorun" and Data to the absolute path to the commands.bat file that you cloned from here
  
  ###### you have now set commands.bat to run every time you open the command line

## usage

**NOTE: The shortcutKey must have no spaces AND the command must be contained in double quotation marks (")**

```
command set <shortcutKey> "<command>" 
```

**OR**

```
command -s <shortcutKey> "<command>"
```

## hello world

After completing setup and opening a new terminal window, simply paste the following command and press enter:

```
command set hello "echo world"
```
Now, just type hello at the command line and see how your command line responds!

##### future improvements
 - probably deleting shortcuts without having to go into the batch file and doing it manually
 - probably a replace shorcut functionality
 - probably some help functionality like Josiah Sayers has on his [Open project](https://github.nwie.net/sayerj1/Open-Create_Terminal_Shortcuts)
 - probably display all currently defined shortcuts
 - maybe a command for fireworks, who knows
 
 
### the DOSKEY shortcuts do not work with PowerShell. It does work with Hyper.js and Command Prompt.
