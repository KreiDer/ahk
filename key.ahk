^!\::Reload
~LWin Up::Return	  
~RWin Up::Return




#IfWinActive ahk_class Emacs

#c::Send #<
#t::Send #>
#h::Send #;
#n::Send #:

!+a::Send ^+1 

#IfWinActive

#IfWinNotActive ahk_class Emacs

!a::Send ^+1

global select

select:=0

  
AppsKey & SC039:: 
  
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

#c::Send ^!+c
#t::Send ^!+t
#e::Send ^!+e
#h::Send !{Left}
#n::Send !{Right}

!+c::
if(select)
	Send +{PgUp}
else 
	Send {PgUp}
Return

^!+vk49::Send {PgUp}
!c::
if(select)
	Send +{Up}
else 
	Send {Up}
Return

^!vk49::Send {Up}



!+t::
if(select)
	Send +{PgDn}
else 
        Send {PgDn}
Return

^!+vk4B::Send {PgDn}
!t::
if(select)
	Send +{Down}
else 
	Send {Down}
Return

^!vk4B::Send {Down}

!h::
if(select)
     Send +{Left}
else 
     Send {Left}
Return

^!vk4A::Send {Left}

!n::
if(select)
	Send +{Right}
else 
     Send {Right}	
Return

^!vk4C::Send {Right}

!g::
if(select)
	Send ^+{Left}
else 
        Send ^{Left}
Return

^!vk55::Send ^{Left}
!r::
if(select)
	Send ^+{Right}
else 
        Send ^{Right}
Return

^!vk4F::Send ^{Right}

!d::Send {Home}
^!vk48::Send {Home}

!+d::Send {End}
^!+vk48::Send {End}

!b::Send ^{Home}
^!vk4E::Send ^{Home}

!+b::Send ^{End}
^!+vk4E::Send ^{End}

^j::
!j::Send ^c
^!vk43::Send ^{SC017}


^k::
!k::Send ^v
^!vk56::Send ^{SC034}


^;::
!;::Send ^z
^!vk5A::Send ^z

!+;::Send ^+z
^!+vk5A::Send ^+z

^q::
!q::Send ^x
^!vk58::Send ^x

!Tab::Send #{Tab}
!e::Send {Backspace}
^!vk44::Send {Backspace}

!u::Send {Del}
^!vk46::Send {Del}

!.::Send ^{Backspace}
^!vk45::Send ^{Backspace}

!p::Send ^{Del}
^!vk52::Send ^{Del}

!f::Send ^f
!+f::Send ^+f
^!vk59::Send ^f   


#IfWinNotActive

;Chrome
#IfWinActive ahk_class Chrome_WidgetWin_1

^,::Send ^w
^g::Send !d
!y::Send ^t
!+h::Send !{Left}
!+n::Send !{Right}
!+g::Send ^{PgUp}
!+r::Send ^{PgDn}
!i::Send !g
#IfWinActive

