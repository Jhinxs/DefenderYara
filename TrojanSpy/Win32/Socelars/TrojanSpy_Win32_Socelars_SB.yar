
rule TrojanSpy_Win32_Socelars_SB{
	meta:
		description = "TrojanSpy:Win32/Socelars.SB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_02_0 = {68 74 74 70 73 3a 2f 2f 62 69 74 62 75 63 6b 65 74 2e 6f 72 67 2f [0-30] 2f 64 6f 77 6e 6c 6f 61 64 73 2f 6d 61 72 67 69 6e 31 32 2e 65 78 65 } //5
		$a_01_1 = {68 74 74 70 3a 2f 2f 66 72 65 65 75 6e 77 65 62 2e 70 72 6f 2f 46 72 65 65 55 6e 57 65 62 2e 65 78 65 } //5 http://freeunweb.pro/FreeUnWeb.exe
		$a_01_2 = {68 74 74 70 3a 2f 2f 64 6f 77 6e 2e 61 64 6d 69 6e 37 61 35 37 61 35 61 37 34 33 38 39 34 61 30 65 2e 63 6c 75 62 2f 34 2e 65 78 65 } //5 http://down.admin7a57a5a743894a0e.club/4.exe
		$a_01_3 = {68 74 74 70 73 3a 2f 2f 73 6e 6f 77 66 61 6c 6c 2e 74 6f 70 2f 65 75 73 65 74 75 70 2e 65 78 65 } //5 https://snowfall.top/eusetup.exe
		$a_02_4 = {63 64 70 6c 61 79 65 72 61 73 73 69 73 74 76 [0-02] 2e 65 78 65 } //1
		$a_01_5 = {68 74 74 70 3a 2f 2f 77 77 77 2e 67 65 74 69 70 2e 70 77 } //1 http://www.getip.pw
		$a_01_6 = {43 68 72 6f 6d 65 5c 55 73 65 72 20 44 61 74 61 5c 44 65 66 61 75 6c 74 5c 43 6f 6f 6b 69 65 73 } //1 Chrome\User Data\Default\Cookies
	condition:
		((#a_02_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_02_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}