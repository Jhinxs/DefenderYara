
rule TrojanDownloader_Win32_Carberp_BS{
	meta:
		description = "TrojanDownloader:Win32/Carberp.BS,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_03_0 = {80 30 4d 40 39 d0 75 ?? 89 4c 24 08 89 5c 24 04 c7 04 24 ?? ?? ?? ?? e8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 81 c4 10 28 00 00 } //1
		$a_00_1 = {64 61 65 6d 6f 6e 75 70 64 2e 65 78 65 20 2f 61 70 70 } //1 daemonupd.exe /app
		$a_00_2 = {47 6f 6f 67 6c 65 5c 55 70 64 61 74 65 00 77 69 6e 75 70 64 61 74 65 } //1
		$a_03_3 = {31 ee 0f b6 ee 0f b6 2c ed ?? ?? ?? ?? c1 e5 08 31 ee 0f b6 ef 0f b6 2c ed ?? ?? ?? ?? c1 e5 18 31 ee 0f b6 ea 0f b6 2c ed ?? ?? ?? ?? 31 ef 0f b6 ec 0f b6 2c ed ?? ?? ?? ?? c1 e5 08 31 ef } //10
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*10) >=13
 
}