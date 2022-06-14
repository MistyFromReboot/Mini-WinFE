; By RichMinichiello - https://www.autoitscript.com/forum/topic/159626-on-screen-keyboard/
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <WinAPI.au3>
#include <ButtonConstants.au3>

;$WS_EX_NOACTIVATE = 0x08000000
$MA_NOACTIVATE = 3
$MA_NOACTIVATEANDEAT = 4



; Create "keyboard" GUI
$hGUI = GUICreate("On Screen Keyboard - v. 14.3.17", 587, 203, 564, 614, -1, BitOR($WS_EX_TOOLWINDOW, $WS_EX_TOPMOST, $WS_EX_NOACTIVATE))

$dummy1 = GUICtrlCreateDummy()

$tilda = GUICtrlCreateButton("`", 0, 0, 42, 41)
$1 = GUICtrlCreateButton("1", 40, 0, 43, 41)
$2 = GUICtrlCreateButton("2", 80, 0, 43, 41)
$3 = GUICtrlCreateButton("3", 120, 0, 43, 41)
$4 = GUICtrlCreateButton("4", 160, 0, 43, 41)
$5 = GUICtrlCreateButton("5", 200, 0, 43, 41)
$6 = GUICtrlCreateButton("6", 240, 0, 43, 41)
$7 = GUICtrlCreateButton("7", 280, 0, 43, 41)
$8 = GUICtrlCreateButton("8", 320, 0, 43, 41)
$9 = GUICtrlCreateButton("9", 360, 0, 43, 41)
$0 = GUICtrlCreateButton("0", 400, 0, 43, 41)
$dash = GUICtrlCreateButton("-", 440, 0, 43, 41)
$eq = GUICtrlCreateButton("=", 480, 0, 43, 41)
$bs = GUICtrlCreateButton("Backspace", 522, 0, 59, 41)

GUICtrlCreateButton("Tab", 0, 40, 59, 41)
$q = GUICtrlCreateButton("q", 58, 40, 43, 41)
$w = GUICtrlCreateButton("w", 98, 40, 43, 41)
$e = GUICtrlCreateButton("e", 138, 40, 43, 41)
$r = GUICtrlCreateButton("r", 178, 40, 43, 41)
$t = GUICtrlCreateButton("t", 218, 40, 43, 41)
$y = GUICtrlCreateButton("y", 258, 40, 43, 41)
$u = GUICtrlCreateButton("u", 298, 40, 43, 41)
$i = GUICtrlCreateButton("i", 338, 40, 43, 41)
$o = GUICtrlCreateButton("o", 378, 40, 43, 41)
$p = GUICtrlCreateButton("p", 418, 40, 43, 41)
$OpenBracket = GUICtrlCreateButton("[", 458, 40, 43, 41)
$CloseBracket = GUICtrlCreateButton("]", 498, 40, 43, 41)
$BkSlash = GUICtrlCreateButton("\", 538, 40, 43, 41)

GUICtrlCreateButton("", 0, 80, 75, 41)
$a = GUICtrlCreateButton("a", 73, 80, 43, 41)
$s = GUICtrlCreateButton("s", 113, 80, 43, 41)
$d = GUICtrlCreateButton("d", 153, 80, 43, 41)
$f = GUICtrlCreateButton("f", 193, 80, 43, 41)
$g = GUICtrlCreateButton("g", 233, 80, 43, 41)
$h = GUICtrlCreateButton("h", 273, 80, 43, 41)
$j = GUICtrlCreateButton("j", 312, 80, 43, 41)
$k = GUICtrlCreateButton("k", 353, 80, 43, 41)
$l = GUICtrlCreateButton("l", 393, 80, 43, 41)
$semicolon = GUICtrlCreateButton(";", 433, 80, 43, 41)
$quotes = GUICtrlCreateButton("'", 473, 80, 43, 41)
GUICtrlCreateButton("Enter", 514, 80, 67, 41)


GUICtrlCreateButton("Shift", 0, 120, 91, 41)
$z = GUICtrlCreateButton("z", 89, 120, 43, 41)
$x = GUICtrlCreateButton("x", 129, 120, 43, 41)
$c = GUICtrlCreateButton("c", 169, 120, 43, 41)
$v = GUICtrlCreateButton("v", 209, 120, 43, 41)
$b = GUICtrlCreateButton("b", 249, 120, 43, 41)
$n = GUICtrlCreateButton("n", 289, 120, 43, 41)
$m = GUICtrlCreateButton("m", 329, 120, 43, 41)
$comma = GUICtrlCreateButton(",", 369, 120, 43, 41)
$Period = GUICtrlCreateButton(".", 409, 120, 43, 41)
$FrontSlash = GUICtrlCreateButton("/", 449, 120, 43, 41)
GUICtrlCreateButton("", 490, 120, 91, 41)

GUICtrlCreateButton("", 0, 160, 59, 41)
GUICtrlCreateButton("L-Win", 56, 160, 59, 41, $BS_ICON)
GUICtrlSetImage(-1, "C:\Windows\windows_flag.ico", -1)
GUICtrlCreateButton("Alt", 112, 160, 59, 41)
GUICtrlCreateButton("Space", 168, 160, 187, 41)
GUICtrlCreateButton("Alt", 352, 160, 59, 41)
GUICtrlCreateButton("R-Win", 409, 160, 58, 41, $BS_ICON)
GUICtrlSetImage(-1, "C:\Windows\windows_flag.ico", -1)
GUICtrlCreateButton("", 465, 160, 51, 41)
GUICtrlCreateButton("Close", 515, 160, 66, 41)

$dummy2 = GUICtrlCreateDummy()
GUISetState()

GUIRegisterMsg($WM_MOUSEACTIVATE, 'WM_EVENTS')

;KN71Run("notepad.exe")
$Shift = 0
While 1
    $msg = GUIGetMsg()
    Switch $msg
        Case $GUI_EVENT_CLOSE
            send ("{SHIFTUP}")
            Exit
        Case $dummy1 To $dummy2
            Local $sText = ControlGetText($hGUI, "", $msg)
            ; Write key
            If $sText = "Space" Then
                Send("{SPACE}")
            ElseIf $sText = "Enter" Then
                Send("{ENTER}")
            ElseIf $sText = "L-Win" Then
                Send("{LWIN}")
            ElseIf $sText = "R-Win" Then
                Send("{RWIN}")
            ElseIf $sText = "Tab" Then
                Send("{TAB}")
            ElseIf $sText = "Backspace" Then
                send("{BS}")
            ElseIf $sText = "Shift" Then
                If $Shift = 0 Then
                    GUICtrlSetData($tilda,"~")
                    GUICtrlSetData($1,"!")
                    GUICtrlSetData($2,"@")
                    GUICtrlSetData($3,"#")
                    GUICtrlSetData($4,"$")
                    GUICtrlSetData($5,"%")
                    GUICtrlSetData($6,"^")
                    GUICtrlSetData($7,'&&')
                    GUICtrlSetData($8,"*")
                    GUICtrlSetData($9,"(")
                    GUICtrlSetData($0,")")
                    GUICtrlSetData($dash,"_")
                    GUICtrlSetData($eq,"+")

                    GUICtrlSetData($q,"Q")
                    GUICtrlSetData($w,"W")
                    GUICtrlSetData($e,"E")
                    GUICtrlSetData($r,"R")
                    GUICtrlSetData($t,"T")
                    GUICtrlSetData($y,"Y")
                    GUICtrlSetData($u,"U")
                    GUICtrlSetData($i,"I")
                    GUICtrlSetData($o,"O")
                    GUICtrlSetData($p,"P")
                    GUICtrlSetData($OpenBracket,"{")
                    GUICtrlSetData($CloseBracket,"}")
                    GUICtrlSetData($BkSlash,"|")

                    GUICtrlSetData($a,"A")
                    GUICtrlSetData($s,"S")
                    GUICtrlSetData($d,"D")
                    GUICtrlSetData($f,"F")
                    GUICtrlSetData($g,"G")
                    GUICtrlSetData($h,"H")
                    GUICtrlSetData($j,"J")
                    GUICtrlSetData($k,"K")
                    GUICtrlSetData($l,"L")
                    GUICtrlSetData($semicolon,":")
                    GUICtrlSetData($quotes,'"')

                    GUICtrlSetData($z,"Z")
                    GUICtrlSetData($x,"X")
                    GUICtrlSetData($c,"C")
                    GUICtrlSetData($v,"V")
                    GUICtrlSetData($b,"B")
                    GUICtrlSetData($n,"N")
                    GUICtrlSetData($m,"M")
                    GUICtrlSetData($comma,"<")
                    GUICtrlSetData($Period,">")
                    GUICtrlSetData($FrontSlash,"?")


;~                  Send("{SHIFTDOWN}")
                    $Shift = 1
                Else
                    GUICtrlSetData($tilda,"`")
                    GUICtrlSetData($1,"1")
                    GUICtrlSetData($2,"2")
                    GUICtrlSetData($3,"3")
                    GUICtrlSetData($4,"4")
                    GUICtrlSetData($5,"5")
                    GUICtrlSetData($6,"6")
                    GUICtrlSetData($7,"7")
                    GUICtrlSetData($8,"8")
                    GUICtrlSetData($9,"9")
                    GUICtrlSetData($0,"0")
                    GUICtrlSetData($dash,"-")
                    GUICtrlSetData($eq,"=")

                    GUICtrlSetData($q,"q")
                    GUICtrlSetData($w,"w")
                    GUICtrlSetData($e,"e")
                    GUICtrlSetData($r,"r")
                    GUICtrlSetData($t,"t")
                    GUICtrlSetData($y,"y")
                    GUICtrlSetData($u,"u")
                    GUICtrlSetData($i,"i")
                    GUICtrlSetData($o,"o")
                    GUICtrlSetData($p,"p")
                    GUICtrlSetData($OpenBracket,"[")
                    GUICtrlSetData($CloseBracket,"]")
                    GUICtrlSetData($BkSlash,"\")

                    GUICtrlSetData($a,"a")
                    GUICtrlSetData($s,"s")
                    GUICtrlSetData($d,"d")
                    GUICtrlSetData($f,"f")
                    GUICtrlSetData($g,"g")
                    GUICtrlSetData($h,"h")
                    GUICtrlSetData($j,"j")
                    GUICtrlSetData($k,"k")
                    GUICtrlSetData($l,"l")
                    GUICtrlSetData($semicolon,";")
                    GUICtrlSetData($quotes,"'")

                    GUICtrlSetData($z,"z")
                    GUICtrlSetData($x,"x")
                    GUICtrlSetData($c,"c")
                    GUICtrlSetData($v,"v")
                    GUICtrlSetData($b,"b")
                    GUICtrlSetData($n,"n")
                    GUICtrlSetData($m,"m")
                    GUICtrlSetData($comma,",")
                    GUICtrlSetData($Period,".")
                    GUICtrlSetData($FrontSlash,"/")

                    $Shift = 0
                EndIf
            ElseIf $sText = "Close" Then
                ;send ("{SHIFTUP}")
                Exit
            Else
                if $sText = '&&' Then
                    send('&')
                Else
                    Send($sText,1)
                EndIf
            EndIf
    EndSwitch
WEnd

Func WM_EVENTS($hWndGUI, $MsgID, $WParam, $LParam)
    Switch $hWndGUI
        Case $hGUI
            Switch $MsgID
                Case $WM_MOUSEACTIVATE
                    ; Check mouse position
                    Local $aMouse_Pos = GUIGetCursorInfo($hGUI)
                    If $aMouse_Pos[4] <> 0 Then
                        Local $word = _WinAPI_MakeLong($aMouse_Pos[4], $BN_CLICKED)
                        _SendMessage($hGUI, $WM_COMMAND, $word, GUICtrlGetHandle($aMouse_Pos[4]))
                    EndIf
                    Return $MA_NOACTIVATEANDEAT
            EndSwitch
    EndSwitch
    Return $GUI_RUNDEFMSG
EndFunc