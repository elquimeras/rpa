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
;Local $iAnswer = MsgBox(BitOR($MB_YESNO, $MB_SYSTEMMODAL), "AutoIt Example (Spanish Only)", "This script will run Chrome and plays with youtube.  Do you want to run it?")

; Check the user's answer to the prompt (see the help file for MsgBox return values)
; If "No" was clicked (7) then exit the script
;If $iAnswer = 7 Then
;	MsgBox($MB_SYSTEMMODAL, "AutoIt", "OK.  Bye!")
;	Exit
;EndIf

; Navigate menu and open Navicat
MouseClick("left", 22,879);
MouseClick("left", 702,351);
WinWaitActive("[CLASS:TNavicatMainForm]")
Sleep(2000)

; OpenDatabase
MouseClick("left", 9,137);
MouseClick("left", 48,172, 2);
MouseClick("left", 66,262, 2);
Sleep(2000)

; Select Users Table
MouseClick("left", 245,754, 2);
Sleep(2000)

; Triger Export
MouseClick("left", 690,154);

; Confirm Range
WinWaitActive("[CLASS:TWDialogForm]")
Send("{ENTER}")
Sleep(1000)

; Select CSV
Send("{TAB 3}")
Send("{DOWN 1}")
Send("{TAB 1}")
Sleep(500)

; Export Data
Send("{ENTER}")
Sleep(1000)
Send("{ENTER}")
Sleep(1000)
Send("{ENTER}")
Sleep(1000)
Send("{ENTER}")
Sleep(1000)
Send("{ENTER}")
Sleep(5000)

; Close the navicat
Send("!f")
Sleep(500)
Send("{DOWN 6}{ENTER}")

; OpenFile on Notepad
$sTextFile = "C:\Users\Daniel\Desktop\cep_tiusers.csv"
Run( "notepad.exe " & $sTextFile, @WindowsDir, @SW_MAXIMIZE )

; Finished!