
rule PWS_Win32_OnLineGames_CSS{
	meta:
		description = "PWS:Win32/OnLineGames.CSS,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {44 65 72 20 48 65 72 72 20 64 65 72 20 52 69 6e 67 65 20 4f 6e 6c 69 6e 65 } //1 Der Herr der Ringe Online
		$a_01_1 = {54 68 65 20 4c 6f 72 64 20 6f 66 20 74 68 65 20 52 69 6e 67 73 20 4f 6e 6c 69 6e 65 } //1 The Lord of the Rings Online
		$a_00_2 = {4d 61 70 6c 65 53 74 6f 72 79 2a 2e 69 6e 69 } //1 MapleStory*.ini
		$a_00_3 = {53 53 44 54 53 68 65 6c 6c 48 6f 6f 6b 2e 64 6c 6c } //1 SSDTShellHook.dll
		$a_01_4 = {50 61 73 73 00 00 00 00 41 63 63 6f 75 6e 74 } //1
		$a_01_5 = {49 6e 74 65 72 6e 65 74 43 72 61 63 6b 55 72 6c 41 } //1 InternetCrackUrlA
		$a_01_6 = {43 72 65 61 74 65 54 68 72 65 61 64 } //1 CreateThread
		$a_01_7 = {47 65 74 50 72 69 76 61 74 65 50 72 6f 66 69 6c 65 53 74 72 69 6e 67 41 } //1 GetPrivateProfileStringA
		$a_01_8 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_00_9 = {73 65 6e 64 00 00 00 00 77 73 32 5f 33 32 2e 64 6c 6c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_00_9  & 1)*1) >=10
 
}