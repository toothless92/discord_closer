$S_running = "close-discord" ;name the script

$pos = MouseGetPos()
$X=$pos[0]
$Y=$pos[1]

$begin = TimerInit()

While 1
   $pos1 = MouseGetPos()
   $X1=$pos1[0]
   $Y1=$pos1[1]

   if $X<>$X1 and $Y<>$Y1 Then
	  $begin = TimerInit()
	  $pos = MouseGetPos()
	  $X=$pos[0]
	  $Y=$pos[1]
	  ConsoleWrite("moved" & @CRLF)
   ElseIf TimerDiff($begin) > 1000*60*10 Then
	  ProcessClose ( "Discord.exe" )
	  ConsoleWrite("closed discord" & @CRLF)
   Else
	  ConsoleWrite("waiting" & @CRLF)
   EndIf

   sleep (500)

WEnd