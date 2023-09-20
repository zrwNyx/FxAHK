#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

GuiWidth := 30
Guiheight := 80
Guixpos := A_ScreenWidth - GuiWidth - 10
Guiypos := A_ScreenHeight - Guiheight - 1000


*RAlt::
  Suspend
  return
  
#IfWinActive, War

  *LButton::
    if(GetKeyState("RButton","P")){
      
    }else{
      quickScope()
    }
  
  *MButton::
    Send {LButton}
    return

Return



quickScope(){
  While GetKeyState("LButton", "P") {
    Send {Shift down}  
    Send {RButton down}
    Sleep, 100
    Send {LButton}
    Sleep, 100
    Send {RButton up}
  }
  Send {Shift up}
  return
}
