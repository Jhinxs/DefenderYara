
rule Backdoor_Win32_GGDoor_gen_A{
	meta:
		description = "Backdoor:Win32/GGDoor.gen!A,SIGNATURE_TYPE_PEHSTR,ffffffe8 03 20 03 0a 00 00 "
		
	strings :
		$a_01_0 = {7a 69 70 20 63 3a 5c 70 6c 69 6b 2e 65 78 65 } //100 zip c:\plik.exe
		$a_01_1 = {7a 69 70 20 63 3a 5c 70 6c 69 6b 2e 6d 70 33 20 31 2e 35 } //100 zip c:\plik.mp3 1.5
		$a_01_2 = {68 74 74 70 3a 2f 2f 77 6f 6a 61 73 73 2e 75 6e 69 74 65 64 63 72 65 77 2e 6e 65 74 } //100 http://wojass.unitedcrew.net
		$a_01_3 = {68 74 74 70 3a 2f 2f 75 6e 69 74 65 64 63 72 65 77 2e 6e 65 74 } //100 http://unitedcrew.net
		$a_01_4 = {68 74 74 70 3a 2f 2f 77 77 77 2e 67 67 74 2e 69 6e 74 2e 70 6c } //100 http://www.ggt.int.pl
		$a_01_5 = {64 69 72 65 63 74 78 32 32 6c 2e 64 6c 6c } //100 directx22l.dll
		$a_01_6 = {74 65 6c 6e 65 74 20 3c 49 50 3e 20 3c 70 6f 72 74 3e } //100 telnet <IP> <port>
		$a_01_7 = {72 6f 6f 74 6b 69 74 20 3c 6f 70 63 6a 61 3e } //100 rootkit <opcja>
		$a_01_8 = {70 61 73 73 20 6f 65 } //100 pass oe
		$a_01_9 = {70 61 73 73 20 69 65 } //100 pass ie
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*100+(#a_01_3  & 1)*100+(#a_01_4  & 1)*100+(#a_01_5  & 1)*100+(#a_01_6  & 1)*100+(#a_01_7  & 1)*100+(#a_01_8  & 1)*100+(#a_01_9  & 1)*100) >=800
 
}