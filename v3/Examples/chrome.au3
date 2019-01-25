#include <Constants.au3>

;
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT
; Author:         Jonathan Bennett (jon at autoitscript dot com)
;
; Script Function:
;   Opens Notepad, types in some text and then quits.
;   The text typed shows two ways of Sending special
;   characters
;

; Prompt the user to run the script - use a Yes/No prompt with the flag parameter set at 4 (see the help file for more details)
Local $iAnswer = MsgBox(BitOR($MB_YESNO, $MB_SYSTEMMODAL), "AutoIt Example (Spanish Only)", "This script will run Chrome and plays with youtube.  Do you want to run it?")

; Check the user's answer to the prompt (see the help file for MsgBox return values)
; If "No" was clicked (7) then exit the script
If $iAnswer = 7 Then
	MsgBox($MB_SYSTEMMODAL, "AutoIt", "OK.  Bye!")
	Exit
EndIf

; Run Notepad
;Run("cmd")
ShellExecute("chrome.exe", "https://www.youtube.com --new-window --start-fullscreen")

;WinWaitActive("[CLASS:Chrome_WidgetWin_1]", "(6) YouTube - Google Chrome")
Sleep(5000)

Send("{TAB 3}Zardonic{ENTER}")

Sleep(5000)

Send("{TAB 7}{ENTER}")

; Finished!