;; Open new Windows Terminal tab
#ENTER::
  {
    If WinExist("ahk_exe WindowsTerminal.exe")
    {
      WinActivate()
      WinWaitActive()
      Send "^+T" ; open new TAB with Ctrl+T instead of new-tab to ensure it opens in focused window
    }
    Else
    {
      Run(EnvGet("LOCALAPPDATA") . "\Microsoft\WindowsApps\wt.exe")
      WinWait("ahk_exe WindowsTerminal.exe")
      WinActivate
    }
  }
