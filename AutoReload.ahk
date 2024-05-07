ScriptStartTime := A_Now

SetTimer CheckReload, 1000

CheckReload() {
    global ScriptStartTime
    OutputDebug "CheckReload"
    LastModified := ""
    Loop Files, "*.ahk"
    {
        ModificationTime := FileGetTime(A_LoopFileFullPath)
        if (LastModified = "" or ModificationTime > LastModified) {
            LastModified := ModificationTime
        }
    }
    If (LastModified > ScriptStartTime) {
        ScriptStartTime := LastModified ; prevent repeated reload on load failure
        Reload
    }
}
