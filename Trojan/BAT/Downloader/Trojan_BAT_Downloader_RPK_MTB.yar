
rule Trojan_BAT_Downloader_RPK_MTB{
	meta:
		description = "Trojan:BAT/Downloader.RPK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {6d 00 65 00 64 00 69 00 61 00 66 00 69 00 72 00 65 00 2e 00 63 00 6f 00 6d 00 [0-50] 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 6a 00 70 00 67 00 } //1
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {4c 61 74 65 47 65 74 } //1 LateGet
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //1 DownloadString
		$a_01_4 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_5 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule Trojan_BAT_Downloader_RPK_MTB_2{
	meta:
		description = "Trojan:BAT/Downloader.RPK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 } //1 cdn.discordapp.com
		$a_01_1 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 47 00 65 00 74 00 43 00 6f 00 6f 00 6b 00 69 00 65 00 45 00 78 00 44 00 65 00 6d 00 6f 00 2e 00 64 00 6c 00 6c 00 } //1 InternetGetCookieExDemo.dll
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_3 = {66 00 61 00 73 00 66 00 73 00 66 00 73 00 2e 00 65 00 78 00 65 00 } //1 fasfsfs.exe
		$a_01_4 = {6d 00 61 00 6e 00 69 00 74 00 61 00 2e 00 6e 00 65 00 72 00 64 00 65 00 73 00 69 00 6e 00 } //1 manita.nerdesin
		$a_01_5 = {47 65 74 54 79 70 65 } //1 GetType
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}