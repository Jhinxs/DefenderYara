
rule PWS_Win32_OnLineGames_FT{
	meta:
		description = "PWS:Win32/OnLineGames.FT,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 73 68 65 6c 6c 65 78 65 63 75 74 65 68 6f 6f 6b 73 } //1 Software\microsoft\windows\currentversion\Explorer\shellexecutehooks
		$a_03_1 = {6a 0a ff 15 ?? ?? 40 00 8d 85 ?? ?? ff ff 50 e8 ?? ?? 00 00 50 8d 85 ?? ?? ff ff 50 8d 85 ?? ?? ff ff 50 e8 ?? ?? 00 00 83 c4 10 6a 01 58 } //1
		$a_03_2 = {68 e8 03 00 00 ff 15 ?? ?? 40 00 ff d3 2b 45 ?? 3d 40 77 1b 00 76 ?? ff 35 ?? ?? 40 00 ff 15 ?? ?? 40 00 6a 00 ff 15 ?? ?? 40 00 5f } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}