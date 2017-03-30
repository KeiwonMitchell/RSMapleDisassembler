HotKeySet("{F1}", "myExit")

$PartTime = 75000
$no_logs= False
$no_energy=False

While(1)

while(not($no_logs))

   $random_rest=Random(-2000,5000,1)
   $random_pixels=Random(-4,4,1)
   $random_speed=Random(-3,5,1)
   $random_sleep=Random(-100,300,1)

	$pixels = PixelSearch(1339,619,1353,630,0x57390C,1)

	if Not(@error) Then
	  clickZ()
	Else
	$no_logs= True
	EndIF

	if($no_logs=True) Then
	 ExitLoop
	  EndIf
   WEnd

while(not($no_energy))
   LC(1303+$random_pixels,625+$random_pixels)
   Sleep(1500+$random_sleep)
   $pixels = PixelSearch(702,394,919,412,0x0A83B3,1)
 if NOT (@error) Then
   LC(851+$random_pixels,403+$random_pixels)
   Sleep(26000+$random_sleep)
Else
   ExitLoop
   EndIf

WEnd
myExit()
WEnd




func LC($x, $y)
	MouseClick("left",$x, $y, 1, 12+$random_speed)
EndFunc

Func myExit()
   msgbox(0,"Exiting", "Bot is quitting")
   exit
EndFunc

func clickZ()

	LC(1373+$random_pixels,955+$random_pixels)
sleep(500+$random_sleep=Random)
	LC(1349+$random_pixels,628+$random_pixels)
sleep($PartTime+$random_rest)
EndFunc

