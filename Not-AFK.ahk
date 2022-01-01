; --------------------------------------------
; @Author  : Matthieu GOSSET                 -
; @Contact : matthieu.gosset.dev@outlook.com -
; @Date    : 1 Jan 2022                      -
; @Purpose : Never be afk                    -
; @Credit  : Random dev from StackOverflow   -
; --------------------------------------------
I_Icon = assets\SleepZZZ.png
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%
;return

#SingleInstance force
#Persistent
settimer, idleCheck, 1000
CoordMode, Mouse, Screen

; ----------------- DEFINE ----------------- -
; Time between every input if no other input has been detected
idleTimeCheck := 30000

; You can change the key sequence to adapt it to whatever your bindings are,
; It should be a space separated list of keys to send, to send an actual space use {space}
keySequence := "w a s d"
anyKeys := StrSplit(keySequence, A_space)

; If you dont want the character to move,
; you may indicate what is the actual oposite movement key from your bindings
; ie : if 'z' is sent, your character will go forward, an 's' for backward is also sent
keySequenceOpposite := { w: "s", s: "w", a: "d", d: "a" }
return
; ----------------------------------------- -

; ----------------- MAIN ------------------ -
idleCheck:
  if (A_TimeIdle >= idleTimeCheck) {
    sleep, rand(0, 1000)
    randomKey := anyKeys[rand(anyKeys.MinIndex(), anyKeys.MaxIndex())]

    send, % randomKey (keySequenceOpposite.HasKey(randomKey) ? keySequenceOpposite[randomKey] : "")
    MouseGetPos, x, y
    if (x = A_ScreenWidth/2)
    MouseMove, rand(0, A_ScreenWidth) , rand(0, A_ScreenHeight/2), 3
    else
      MouseMove, A_ScreenWidth/2, A_ScreenHeight/2, 3
  }
return

rand(l, h) {
  random, r, l, h
return r
}
; ----------------------------------------- -
