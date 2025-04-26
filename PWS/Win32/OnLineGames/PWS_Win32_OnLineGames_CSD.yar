
rule PWS_Win32_OnLineGames_CSD{
	meta:
		description = "PWS:Win32/OnLineGames.CSD,SIGNATURE_TYPE_PEHSTR_EXT,6a 00 6a 00 07 00 00 "
		
	strings :
		$a_01_0 = {25 73 3f 61 63 63 6f 75 6e 74 3d 25 73 26 70 61 73 73 3d 25 73 26 73 65 76 65 72 3d 25 73 26 6e 61 6d 65 3d 25 73 26 6c 65 76 65 6c 3d 25 73 26 77 6f 72 6b 3d 25 73 26 67 6f 6c 64 3d 25 64 } //1 %s?account=%s&pass=%s&sever=%s&name=%s&level=%s&work=%s&gold=%d
		$a_01_1 = {59 42 5f 4f 6e 6c 69 6e 65 43 6c 69 65 6e 74 } //1 YB_OnlineClient
		$a_01_2 = {52 65 73 6f 75 72 63 65 55 70 64 61 74 61 2e 65 78 65 } //1 ResourceUpdata.exe
		$a_01_3 = {53 65 6e 64 53 65 72 76 65 72 } //1 SendServer
		$a_01_4 = {5c 5c 2e 5c 6d 73 73 6f 63 6b } //2 \\.\mssock
		$a_01_5 = {5c 5c 2e 5c 4d 73 41 75 64 69 6f } //2 \\.\MsAudio
		$a_02_6 = {8b 44 24 10 6a 00 6a 00 6a 00 6a 00 6a 00 50 6a 01 6a 03 6a 01 68 ff 01 0f 00 57 57 56 ff 15 ?? ?? 00 10 85 c0 75 0c 56 ff 15 ?? ?? 00 10 5f 32 c0 5e c3 } //100
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_02_6  & 1)*100) >=106
 
}