; # window ; ^ Ctrl ; ! Alt ; + Shift
#SingleInstance, force

!+m::run https://mail.google.com/mail/u/0/h/1p1nogfydjb1p/?zy=e&f=1
!+h::run D:\\d.Skill\\AutoHotkey\\All_in_one.ahk
:::archive::-in:Sent -in:Draft -in:Inbox

; open workspace
!+w::
    Run, subl
    Sleep, 500
    Send, #{Left}
    Sleep, 100

    Send, #2
    Sleep, 500
    Send, #{Right}
Return

!+Del::FileRecycleEmpty
!Esc::Send, ^+{Esc}
^+W::Send, !{F4}

::lpd::Le Phuoc Dat 
:*:hsd::hsddung92.lpdat@gmail.com
:*:alone1::alone147896321@gmail.com
:*:expl::explorer .
:*:py3::python3
:*:taskkill::taskkill /IM pythonw.exe /F
:*:song tu::song tu dao lu cua toi
:*:312::3120219024
:*:--v::--version
:*::phone::0869570027
:*::phone2::0835790972
:*::born::25/06/2000
:*:@g::@gmail.com
; ------------------------------------------------------------
; computer win 10 Directory links
	:*:\cl::D:\c.class\
	
	::\ma::D:\c.class\a-Ma_nguon_mo\
	:*:\xamp::C:\xampp\htdocs
	::\co::D:\c.class\b-CSDL
	:*:\tieng::D:\c.class\c-Tieng_anh_chuyen_nganh
	:*:\chu::D:\c.class\d-CNXHKH
	:*:\mang::D:\c.class\e-Mang_may_tinh
	::\he::D:\c.class\f-He_phan_tan
	:*:\phuong::D:\c.class\g-PPL_NCKH_chuyen_nganh
	:*:\cong::D:\c.class\h-Tool_and_Enviroment_dev_app
	:*:\java::D:\c.class\i-Java

    :*:\it::D:\a.IT\
    ::\py::D:\a.IT\Python
    :*:\git::D:\a.IT\Git
    :*:\auto::D:\a.IT\Python\Automate
    :*:\short::D:\a.IT\Python\Automate\Shortcut_script

    :*:\eng::D:\b.English

    :*:\ski::D:\d.Skill\
    :*:\ahk::D:\d.Skill\AutoHotkey

	:*:\down::C:\Users\ASUS\Downloads
	:*:\desk::C:\Users\ASUS\Desktop
	:*:\doc::C:\Users\ASUS\Documents
	:*:\mus::D:\Music

:*:---::-----------------------------------------------------------
; vim user
	Capslock::Esc
; h j k l to arrow keys

; keyboard: ikonemi simpli 10 
	; bàn phím bấm rất nhẹ lúc mới mua về.
	AppsKey::LAlt 	; Menu button 
	Ins::Return
	; RAlt:: Send, {RWin}
	
; change volume 
	#j::Send, {Volume_Down}
	#k::Send, {Volume_Up}
	#m::Send, {Volume_Mute}
; -------------------------------------------------------------
; ;time vs ;date vs ;now

; without ending character: có thêm * ở giữa :*:
:R*?::time::
	FormatTime, CurrentDateTime,, HH:mm
	SendInput %CurrentDateTime%
return

:R*?::date::
	FormatTime, date,, dd/MM/yyyy
	Send, %date%
return

:R*?::now::
	FormatTime, CurrentDateTime, HH:mm  dd-MM-yyyy
	SendInput %CurrentDateTime%
return

	; now() có bật việt key là không được
	; :now có bật việt key thì được
		;-> nếu từ tiếng việt hiện dấu vào cuối ký tự thì chấp nhận được
; ------------------------------------------------------------
; Dark vs Light color change in time
!+d::
 	Run, D:\a.IT\Python\Automate\Shortcut_script\changeTheme.py
 return
; ------------------------------------------------------------
^g:: ; GoogleSearch or Show Link with CTRL+G
  ; prevClipboard := ClipboardAll ; make copy of previous Clipboard
  Send, {ctrl down}c{ctrl up} ; copy selected text
  ClipWait ; delay
  if !(ErrorLevel)  { 
    Clipboard := RegExReplace(RegExReplace(Clipboard, "\r?\n"," "), "(^\s+|\s+$)")
    If (SubStr(ClipBoard,1,7)="http://" || SubStr(ClipBoard,1,8)="https://")
      Run, % Clipboard
    else 
      Run, % "http://www.google.com/search?hl=en&q=" Clipboard
  } 
  ; Clipboard := prevClipboard ; return to previous clipboard
return
; ------------------------------------------------------------
