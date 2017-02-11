;===========================
;====== Global maping ======
;===========================

;====== Reload AHK ======
^!\::Reload

^+SC024::Send #{Left}
^+SC026::Send #{Right}
^+SC017::Send #{Up}
^+SC025::Send #{Down}

;===========================
;======  Emacs maping ======
;===========================
#IfWinActive ahk_class Emacs

#IfWinActive



;===========================
;====== Total Commander ====
;===========================
#IfWinActive ahk_class TTOTAL_CMD
	^SC017::Send {Up}
	^SC025::Send {Down}
	!1::Send !{f1}
	!2::Send !{f2}
	!4::Send {f4}
	!5::Send {f5}
	!6::Send {f6}
	!7::Send {f7}	
	!8::Send {f8}
#IfWinActive

;===========================
;======   Win Merge   ======
;===========================
#IfWinActive ahk_class WinMergeWindowClassW
	^c::Send !{Up}
	^t::Send !{Down}
#IfWinActive

;===========================
;====  All except Emacs ====
;===========================
#IfWinNotActive ahk_class Emacs

global select
select:=0
;====== alt + t Selection ======
!SC014:: 
	if(select = 1){
		select = 0
	}else{
		select = 1
	} 
Return
      
AppsKey & t::
    Input, a, l1
    If (a="o"){
       Input, b, l1
	If (b="t"){
       		Send (){Left}
   	 }
    	Else if (b ="p"){
        	MsgBox 2
    	}
    }
    Else if (a ="t")
    	 Send (){Left}
    Else if (a ="h")
    	 Send ""{Left}	 
    Else if (a ="g") 
    	 Send ''{Left}	 
    Else if (a ="c")
    	 Send []{Left}	 
    Else if (a ="r")
    	 Send {#}   	 
    Else if (a =",") 
    	 Send {^} 	 
    Else if (a =".") 
    	 Send {+} 	 
    Else if (a ="p")
    	 Send {>}	 
    Else if (a ="y")
    	 Send {&}	 
    Else if (a ="f") 
    	 Send {?}
    Else if (a ="o") 
    	 Send {*}
    Else if (a ="e")
    	 Send {=}
    Else if (a ="u")
    	 Send {_}
    Else if (a ="i")
    	 Send {|}
    Else if (a ="n")
    	 Send {$}
    Else if (a ="q")
    	 Send {~}
    Else if (a ="j")
    	 Send {-}
    Else if (a ="k")
    	 Send {<}
    Else if (a ="x")
    	 Send {!}
    Else if (a ="b")
    	 Send {@}
    Else if (a ="m")
    	 Send ``
    Else if (a ="w")
    	 Send {{}{}}{Left}
    Else if (a ="v")
    	 Send {:}
    Else if (a ="d")
    	 Send `%	 
return

;====== ctrl + 9 ======
^SC00A::
if(select)
	Send +{PgUp}
else 
	Send {PgUp}
Return

;====== alt + c ======
^!SC017::
!SC017::
if(select)
	Send +{Up}
else 
	Send {Up}
Return

;====== alt + t ======
^!SC025::
!SC025::
if(select)
	Send +{Down}
else 
	Send {Down}
Return

;====== ctrl + 0 ======
^!SC00B::
^SC00B::
if(select)
	Send +{PgDn}
else 
        Send {PgDn}
Return

;====== alt + h ======
^!SC024::
!SC024::
if(select)
     Send +{Left}
else 
     Send {Left}
Return

;====== alt + n ======
^!SC026::
!SC026::
if(select)
	Send +{Right}
else 
     Send {Right}	
Return

;====== alt + g ======
^!SC016::
!SC016::
if(select)
	Send ^+{Left}
else 
        Send ^{Left}
Return

;====== alt + r ======
^!SC018::
!SC018::
if(select)
	Send ^+{Right}
else 
        Send ^{Right}
Return

;====== alt + d ======
^!SC023::
!SC023::
if(select)
     Send +{Home}
else 
     Send {Home}
Return

;====== alt + s ======
^!SC027::
!SC027::
if(select)
     Send +{End}
else 
     Send {End}
Return


;====== alt + b ======
^!SC031::			
!SC031::Send ^{Home}

;====== alt + shift + b ======
^!+SC031::
!+SC031::Send ^{End}

;====== ctrl + c ======
!^SC02E::
^SC02E::
!SC02E::
	Send ^{SC017}
	select = 0
Return

;====== ctrl + v ======
!^SC02F::
^SC02F::
!SC02F::Send ^{SC034}

;====== ctrl + z ======
^!SC02C::
^SC02C::
!SC02C::Send ^{SC035}

;====== ctrl + shift + z ======
^!+SC02C::
!+SC02C::Send ^+{SC035}

;====== ctrl + x ======
^!SC02D::
^SC02D::
!SC02D::Send ^{SC030}

;====== alt + Tab ======
!Tab::Send #{Tab}

;====== alt + e ======
^!SC020::
!SC020::Send {Backspace}

;====== alt + u ======
^!SC021::
!SC021::Send {Del}

;====== alt + . ======
^!SC012::
!SC012::Send ^{Backspace}

;====== alt + p ======
^!SC013::
!SC013::Send ^{Del}

;====== alt + f ======
^!SC015::
!SC015::Send ^{SC015}

;====== ctrl + w  ======
^!SC033::
!SC033::Send !{f4}

#IfWinNotActive

;Chrome
#IfWinActive ahk_class Chrome_WidgetWin_1

^,::Send ^w
^SC016::Send !d
!y::Send ^t
!+SC024::Send !{Left}
!+SC026::Send !{Right}
!+SC016::Send ^{PgUp}
!+SC018::Send ^{PgDn}
!i::Send !g
#IfWinActive

F13 & SC016::Send 7
F13 & SC017::Send 8
F13 & SC018::Send 9
F13 & SC024::Send 4
F13 & SC025::Send 5
F13 & SC026::Send 6
F13 & m::Send 1
F13 & SC033::Send 2
F13 & v::Send 3
F13 & SC039::Send 0

F13 & SC019::Send #l
F13 & SC020::Send #d                 