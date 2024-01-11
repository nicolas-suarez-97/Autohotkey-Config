;=====================================================================o
;                       CapsLock Initializer                         ;|
;---------------------------------------------------------------------o
SetCapsLockState "AlwaysOff" ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                         CapsLock Escaper:                          ;|
;----------------------------------o----------------------------------o
;                        CapsLock  |  {ESC}                          ;|
;----------------------------------o----------------------------------o
CapsLock::Send "{ESC}" ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                    CapsLock Direction Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + h |  Left                          ;|
;                      CapsLock + j |  Down                          ;|
;                      CapsLock + k |  Up                            ;|
;                      CapsLock + l |  Right                         ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & h::
    {
        if GetKeyState("control") = 0 ;|
        { ;|
            if GetKeyState("alt") = 0 ;|
                Send "{Left}" ;|
            else ;|
                Send "+{Left}" ;|
            return ;|
        } ;|
        else { ;|
            if GetKeyState("alt") = 0 ;|
                Send "^{Left}" ;|
            else ;|
                Send "+^{Left}" ;|
            return ;|
        } ;|
        return ;|
        ;-----------------------------------o                                ;|
    } ;|
CapsLock & j::
    {
        if GetKeyState("control") = 0 ;|
        { ;|
            if GetKeyState("alt") = 0 ;|
                Send "{Down}" ;|
            else ;|
                Send "+{Down}" ;|
            return ;|
        } ;|
        else { ;|
            if GetKeyState("alt") = 0 ;|
                Send "^{Down}" ;|
            else ;|
                Send "+^{Down}" ;|
            return ;|
        } ;|
        return ;|
        ;-----------------------------------o                                ;|
    }
CapsLock & k:: 
    {
        if GetKeyState("control") = 0 ;|
        { ;|
            if GetKeyState("alt") = 0 ;|
                Send "{Up}" ;|
            else ;|
                Send "+{Up}" ;|
            return ;|
        } ;|
        else { ;|
            if GetKeyState("alt") = 0 ;|
                Send "^{Up}" ;|
            else ;|
                Send "+^{Up}" ;|
            return ;|
        } ;|
        return ;|

    }
    ;-----------------------------------o                                ;|
CapsLock & l:: 
    {
        if GetKeyState("control") = 0 ;|
        { ;|
            if GetKeyState("alt") = 0 ;|
                Send "{Right}" ;|
            else ;|
                Send "+{Right}" ;|
            return ;|
        } ;|
        else { ;|
            if GetKeyState("alt") = 0 ;|
                Send "^{Right}" ;|
            else ;|
                Send "+^{Right}" ;|
            return ;|
        } ;|
        return ;|
    }

    ;---------------------------------------------------------------------o

    ;=====================================================================o
    ;                     CapsLock Home/End Navigator                    ;|
    ;-----------------------------------o---------------------------------o
    ;                      CapsLock + i |  Home                          ;|
    ;                      CapsLock + o |  End                           ;|
    ;                      Ctrl, Alt Compatible                          ;|
    ;-----------------------------------o---------------------------------o
CapsLock & i:: 
    {
        if GetKeyState("control") = 0 ;|
        { ;|
            if GetKeyState("alt") = 0 ;|
                Send "{Home}" ;|
            else ;|
                Send "+{Home}" ;|
            return ;|
        } ;|
        else { ;|
            if GetKeyState("alt") = 0 ;|
                Send "^{Home}" ;|
            else ;|
                Send "+^{Home}" ;|
            return ;|
        } ;|
        return ;|
    } ;|
    ;-----------------------------------o                                ;|
CapsLock & o:: 
    {
        if GetKeyState("control") = 0 ;|
        { ;|
            if GetKeyState("alt") = 0 ;|
                Send "{End}" ;|
            else ;|
                Send "+{End}" ;|
            return ;|
        } ;|
        else { ;|
            if GetKeyState("alt") = 0 ;|
                Send "^{End}" ;|
            else ;|
                Send "+^{End}" ;|
            return ;|
        } ;|
        return ;|
    } ;|
    ;---------------------------------------------------------------------o

    ;=====================================================================o
    ;                      CapsLock Page Navigator                       ;|
    ;-----------------------------------o---------------------------------o
    ;                      CapsLock + u |  PageUp                        ;|
    ;                      CapsLock + p |  PageDown                      ;|
    ;                      Ctrl, Alt Compatible                          ;|
    ;-----------------------------------o---------------------------------o
CapsLock & u:: 
    {
        if GetKeyState("control") = 0 ;|
        { ;|
            if GetKeyState("alt") = 0 ;|
                Send "{PgUp}" ;|
            else ;|
                Send "+{PgUp}" ;|
            return ;|
        } ;|
        else { ;|
            if GetKeyState("alt") = 0 ;|
                Send "^{PgUp}" ;|
            else ;|
                Send "+^{PgUp}" ;|
            return ;|
        } ;|
        return ;|
    } ;|
    ;-----------------------------------o                                ;|
CapsLock & p:: ;|
    {
        if GetKeyState("control") = 0 ;|
        { ;|
            if GetKeyState("alt") = 0 ;|
                Send "{PgDn}" ;|
            else ;|
                Send "+{PgDn}" ;|
            return ;|
        } ;|
        else { ;|
            if GetKeyState("alt") = 0 ;|
                Send "^{PgDn}" ;|
            else ;|
                Send "+^{PgDn}" ;|
            return ;|
        } ;|
        return ;|
    }
    ;---------------------------------------------------------------------o


;=====================================================================o
;                           CapsLock Deletor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + n  |  Ctrl + BackSpace (Delete a Word);|
;                     CapsLock + m  |  BackSpace                     ;|
;                     CapsLock + ,  |  Enter                         ;|
;                     CapsLock + .  |  Delete              ;|
;-----------------------------------o---------------------------------o
CapsLock & ,:: Send "{Del}"                                           ;|
CapsLock & .:: Send "^{Del}"                                          ;|
CapsLock & m:: Send "{BS}"                                            ;|
CapsLock & n:: 
{
if GetKeyState("alt") = 0                                           ;|
    Send "^{BS}"                                                     ;|
else                                                                ;|
    Send "+{Home}{BS}"                                          ;|
return                                                              ;|

}
CapsLock & Space:: Send "{Enter}"                                    ;|
CapsLock & ñ:: Send "="     
CapsLock & <:: Send ">"                                           ;|
CapsLock & -:: Send "_"                                           ;|
;---------------------------------------------------------------------o

Alt & x:: Send "^x"
Alt & c:: Send "^c"
Alt & v:: Send "^v"
Alt & z:: Send "^z"
Alt & a:: Send "^a"
Alt & t:: Send "^t"
Alt & f:: Send "^f"
Alt & s:: Send "^s"
Alt & d:: Send "^d"
Alt & ñ:: Send "^ñ"
Alt & b:: Send "^b"
LWin & c:: Send "^c"
LWin & v:: Send "^v"
LWin & x:: Send "^x"
LWin & s:: Send "^s"
LWin & f:: Send "^f"
LWin & t:: Send "^t"
LWin & z:: Send "^z"
LWin & a:: Send "^a"


F9:: Send "{Media_Play_Pause}"
F10:: Send "{Media_Next}"
F11:: Send "{Volume_Down}"
F12:: Send "{Volume_Up}"
