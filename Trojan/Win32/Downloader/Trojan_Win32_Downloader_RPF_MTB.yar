
rule Trojan_Win32_Downloader_RPF_MTB{
	meta:
		description = "Trojan:Win32/Downloader.RPF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 00 65 00 63 00 72 00 65 00 74 00 6c 00 6f 00 67 00 73 00 2e 00 78 00 79 00 7a 00 } //1 secretlogs.xyz
		$a_01_1 = {53 00 69 00 6c 00 65 00 6e 00 74 00 43 00 6c 00 65 00 61 00 6e 00 75 00 70 00 } //1 SilentCleanup
		$a_01_2 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 } //1 cdn.discordapp.com
		$a_01_3 = {57 00 65 00 62 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 50 00 61 00 73 00 73 00 56 00 69 00 65 00 77 00 5f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //1 WebBrowserPassView_update.exe
		$a_01_4 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}