
rule TrojanClicker_Win32_Zirit_X{
	meta:
		description = "TrojanClicker:Win32/Zirit.X,SIGNATURE_TYPE_PEHSTR_EXT,ffffff9b 00 ffffff97 00 0c 00 00 "
		
	strings :
		$a_00_0 = {44 6f 6d 61 69 6e 73 } //3 Domains
		$a_00_1 = {46 65 65 64 55 72 6c } //3 FeedUrl
		$a_00_2 = {54 6f 46 65 65 64 } //3 ToFeed
		$a_00_3 = {5f 73 65 6c 66 00 } //3 獟汥f
		$a_00_4 = {63 6c 69 63 6b 74 69 6d 65 } //3 clicktime
		$a_00_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 68 65 6c 6c 53 65 72 76 69 63 65 4f 62 6a 65 63 74 44 65 6c 61 79 } //3 SOFTWARE\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelay
		$a_00_6 = {3f 70 69 64 3d 25 30 34 64 26 } //3 ?pid=%04d&
		$a_00_7 = {62 6f 74 2e 64 6c 6c } //1 bot.dll
		$a_00_8 = {52 65 73 6f 75 72 63 65 73 2e 64 6c 6c } //1 Resources.dll
		$a_00_9 = {73 65 74 75 70 2e 6a 6f 62 75 73 69 6e 65 73 73 2e 6f 72 67 } //3 setup.jobusiness.org
		$a_02_10 = {2b c7 3d 30 75 00 00 73 2b 8b 6c 24 14 8b 1d ?? ?? 00 10 6a 00 6a 01 55 ff 15 ?? ?? 00 10 85 c0 75 ?? 68 e8 03 00 00 ff d3 ff d6 2b c7 3d 30 75 00 00 72 } //30
		$a_02_11 = {6a 01 68 00 00 00 80 68 [0-0e] ff 15 ?? ?? 00 10 8b f0 83 fe ff 74 ?? 8d 44 24 10 50 56 ff 15 ?? ?? 00 10 [0-02] 83 c0 da [0-02] 50 56 ff 15 ?? ?? 00 10 8d 4c 24 0c [0-02] 51 6a 26 68 ?? ?? 00 10 56 ff 15 ?? ?? 00 10 85 c0 74 } //100
	condition:
		((#a_00_0  & 1)*3+(#a_00_1  & 1)*3+(#a_00_2  & 1)*3+(#a_00_3  & 1)*3+(#a_00_4  & 1)*3+(#a_00_5  & 1)*3+(#a_00_6  & 1)*3+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*3+(#a_02_10  & 1)*30+(#a_02_11  & 1)*100) >=151
 
}