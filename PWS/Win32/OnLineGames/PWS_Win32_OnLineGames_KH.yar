
rule PWS_Win32_OnLineGames_KH{
	meta:
		description = "PWS:Win32/OnLineGames.KH,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_02_0 = {83 c0 05 c6 00 e9 40 53 bb ?? ?? 00 10 2b d8 83 eb 04 89 18 5b } //1
		$a_02_1 = {6a 02 52 6a 00 6a 5a ff 15 ?? ?? ?? 10 c6 44 24 13 01 68 30 75 00 00 ff 15 ?? ?? ?? 10 e9 ?? ?? ff ff } //1
		$a_00_2 = {68 74 74 70 3a 2f 2f 25 73 3a 25 73 2f 70 6f 62 61 6f 2f 47 65 74 54 75 50 69 61 6e 2e 61 73 70 } //1 http://%s:%s/pobao/GetTuPian.asp
		$a_00_3 = {25 73 62 6c 69 6e 65 2e 61 73 70 25 73 } //1 %sbline.asp%s
		$a_00_4 = {57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 4d 53 57 43 2e 69 6d 65 } //1 WINDOWS\SYSTEM32\MSWC.ime
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}