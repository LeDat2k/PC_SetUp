; comment
; ^ : Ctrl
; ! : Alt
; # : Window

; Type out : "My First Script" 
	; ^j::
	; Send, My First Script
	; return

; Appear a dialog, alert,... said: "You typed btw."
	; ::btw::
	; MsgBox, You typed btw.
	; return

Capslock::Esc

::hsd::hsddung92.lpdat@gmail.com
::lpd::Lê Phước Đạt

; git comments
	::gadd::git add . 
	::gsta::git status
	::gcom::git commit
	::gpush::git push
	; ::gpull::git pull

; ^j::
; MsgBox, Wow!
; MsgBox, There are
; Run, notepad.exe
; WinActivate, Untitled - Notepad
; WinWaitActive, Untitled - Notepad
; Send, 7 lines{!}{Enter}
; SendInput, inside the CTRL{+}J hotkey.
; return

; #Left::
;   WinGetTitle, Title, A
;   WinSet, ExStyle, ^0x80, %Title%
;   Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
;   sleep, 50
;   WinSet, ExStyle, ^0x80, %Title%
;   WinActivate, %Title%
; Return
; 
; #Right::
;   WinGetTitle, Title, A
;   WinSet, ExStyle, ^0x80, %Title%
;   Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
;   sleep, 50
;   WinSet, ExStyle, ^0x80, %Title%
;   WinActivate, %Title%
; Return