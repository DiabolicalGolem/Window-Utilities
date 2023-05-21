;Always-on-top Shortcut
;CTRL+SPACE
^!SPACE::{
if(WinGetExStyle("A") & 0x8){
        t:=RegExReplace(WinGetTitle("A")," ¤")
        WinSetTitle(t, WinGetTitle("A"))
}else{        
        t:=WinGetTitle("A") " ¤"
        WinSetTitle(t, WinGetTitle("A"))
}
WinSetAlwaysOnTop -1, t
}

;Ghost-window Shortcut
;ALT+`
!`::{
tran:=WinGetTransparent("A")
if(tran=""){
        tran:=255
}

if(WinGetExStyle("A") & 0x20){
        t:=RegExReplace(WinGetTitle("A")," ø")
        WinSetTitle(t, WinGetTitle("A"))
        WinSetExStyle(-0x20, t)
}else{
        t:=WinGetTitle("A") " ø"
        WinSetTitle(t, WinGetTitle("A"))
        WinSetExStyle(+0x20, t)
        WinSetTransparent(tran, t)
}
}

;Transparency Shortcuts
;ALT+(Number)
^!0::WinSetTransparent 255, WinGetTitle("A")
^!9::WinSetTransparent 230, WinGetTitle("A")
^!8::WinSetTransparent 205, WinGetTitle("A")
^!7::WinSetTransparent 180, WinGetTitle("A")
^!6::WinSetTransparent 155, WinGetTitle("A")
^!5::WinSetTransparent 130, WinGetTitle("A")
^!4::WinSetTransparent 105, WinGetTitle("A")
^!3::WinSetTransparent 80, WinGetTitle("A")
^!2::WinSetTransparent 55, WinGetTitle("A")
^!1::WinSetTransparent 30, WinGetTitle("A")

;Extended Function Keys
;ALT+(Function Key)
^!F1::Send "{F13}"
^!F2::Send "{F14}"
^!F3::Send "{F15}"
^!F4::Send "{F16}"
^!F5::Send "{F17}"
^!F6::Send "{F18}"
^!F7::Send "{F19}"
^!F8::Send "{F20}"
^!F9::Send "{F21}"
^!F10::Send "{F22}"
^!F11::Send "{F23}"
^!F12::Send "{F24}"
