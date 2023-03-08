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
^!0::{
        WinSetTransparent 255, WinGetTitle("A")
}
^!9::{
        WinSetTransparent 230, WinGetTitle("A")
}
^!8::{
        WinSetTransparent 205, WinGetTitle("A")
}
^!7::{
        WinSetTransparent 180, WinGetTitle("A")
}
^!6::{
        WinSetTransparent 155, WinGetTitle("A")
}
^!5::{
        WinSetTransparent 130, WinGetTitle("A")
}
^!4::{
        WinSetTransparent 105, WinGetTitle("A")
}
^!3::{
        WinSetTransparent 80, WinGetTitle("A")
}
^!2::{
        WinSetTransparent 55, WinGetTitle("A")
}
^!1::{
        WinSetTransparent 30, WinGetTitle("A")
}