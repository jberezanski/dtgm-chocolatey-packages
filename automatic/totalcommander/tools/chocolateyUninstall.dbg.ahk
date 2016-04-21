; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2  ;contains

; variables
winTitle1 = Uninstall /Repair Total Commander ahk_class #32770
winTitle2 = Uninstall Total Commander ahk_class #32770
winTitle3 = Uninstall ahk_class #32770

OutputDebug, AHK untotalcmd %A_Now%: Waiting for window "%winTitle1%"/"Removes the program"
WinWait, %winTitle1%, Removes the program, 20
OutputDebug, AHK untotalcmd %A_Now%: Clicking Uninstall
ControlClick, Button1, %winTitle1%, &Uninstall

OutputDebug, AHK untotalcmd %A_Now%: Waiting for window "%winTitle2%"/"Uninstall Program"
WinWait, %winTitle2%, Uninstall Program, 20
OutputDebug, AHK untotalcmd %A_Now%: Clicking Remove configuration files
ControlClick, Button4, %winTitle2%, Remove configuration files
OutputDebug, AHK untotalcmd %A_Now%: Clicking Uninstall
ControlClick, Button5, %winTitle2%, Uninstall

OutputDebug, AHK untotalcmd %A_Now%: Waiting for window "%winTitle3%"/"Warning: This will"
WinWait, %winTitle3%, Warning: This will, 20
OutputDebug, AHK untotalcmd %A_Now%: Clicking first button in the window "%winTitle3%"/"Warning: This will"
ControlClick, Button1, %winTitle3%, Warning: This will

OutputDebug, AHK untotalcmd %A_Now%: Waiting for window "%winTitle3%"/"The following"
WinWait, %winTitle3%, The following, 20
OutputDebug, AHK untotalcmd %A_Now%: Clicking OK
ControlClick, Button1, %winTitle3%, OK

OutputDebug, AHK untotalcmd %A_Now%: Waiting for window "%winTitle3%"/""
WinWait, %winTitle3%, , 20
OutputDebug, AHK untotalcmd %A_Now%: Clicking OK
ControlClick, Button1, %winTitle3%, OK

OutputDebug, AHK untotalcmd %A_Now%: all done, exiting
ExitApp
