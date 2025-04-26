
rule TrojanDropper_Win32_Killav_A{
	meta:
		description = "TrojanDropper:Win32/Killav.A,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 06 00 00 "
		
	strings :
		$a_02_0 = {74 69 74 6c 65 20 59 6f 75 20 44 45 41 44 21 21 21 21 21 21 21 [0-08] 73 65 74 20 74 61 73 6b 6b 69 6c 6c 3d 73 } //10
		$a_00_1 = {25 73 25 20 2f 69 6d 20 45 53 41 46 45 20 2f 66 20 3e 6e 75 6c } //1 %s% /im ESAFE /f >nul
		$a_00_2 = {25 73 25 20 2f 69 6d 20 4b 41 56 2a 20 2f 66 20 3e 6e 75 6c } //1 %s% /im KAV* /f >nul
		$a_00_3 = {25 73 25 20 2f 69 6d 20 6e 6f 72 74 6f 6e 2a 20 2f 66 20 3e 6e 75 6c } //1 %s% /im norton* /f >nul
		$a_00_4 = {25 73 25 20 2f 69 6d 20 5a 4f 4e 45 41 4c 41 52 4d 20 2f 66 20 3e 6e 75 6c } //1 %s% /im ZONEALARM /f >nul
		$a_00_5 = {66 6f 72 20 25 25 63 20 69 6e 20 28 63 20 25 61 6c 6c 64 72 69 76 65 25 29 20 64 6f 20 64 65 6c 20 25 25 63 3a 5c 2a 2e 67 68 6f 20 2f 66 20 2f 73 20 2f 71 20 3e 6e 75 6c } //10 for %%c in (c %alldrive%) do del %%c:\*.gho /f /s /q >nul
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*10) >=22
 
}