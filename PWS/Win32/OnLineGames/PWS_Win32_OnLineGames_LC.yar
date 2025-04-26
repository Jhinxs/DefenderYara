
rule PWS_Win32_OnLineGames_LC{
	meta:
		description = "PWS:Win32/OnLineGames.LC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {6c 70 6b 69 6e 69 74 2e 64 [0-04] 63 6c 69 65 6e 74 54 58 2e 64 6c 6c 00 } //1
		$a_01_1 = {22 43 3a 5c 57 69 6e 64 6f 77 73 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 22 } //1 "C:\Windows\iexplore.exe"
		$a_02_2 = {8d 45 fc 57 8b 3d ?? ?? ?? 10 50 6a 40 6a 05 56 ff d7 a0 ?? ?? ?? 10 6a 00 88 06 a0 ?? ?? ?? 10 88 46 01 a0 ?? ?? ?? 10 88 46 02 a0 ?? ?? ?? 10 88 46 03 a0 ?? ?? ?? 10 88 46 04 ff 75 fc 6a 05 56 ff d7 } //1
		$a_02_3 = {8d 45 fc 57 8b ?? ?? ?? ?? 10 50 6a 40 6a 05 56 ff d7 6a 00 b8 ?? ?? ?? 10 ff 75 fc 2b c6 83 e8 05 c6 06 e9 6a 05 56 89 46 01 ff d7 5f } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}