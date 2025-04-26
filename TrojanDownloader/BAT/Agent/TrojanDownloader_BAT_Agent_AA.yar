
rule TrojanDownloader_BAT_Agent_AA{
	meta:
		description = "TrojanDownloader:BAT/Agent.AA,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {56 69 67 65 6e 65 72 65 44 65 63 72 79 70 74 } //1 VigenereDecrypt
		$a_01_1 = {54 44 65 73 44 65 63 72 79 70 74 } //1 TDesDecrypt
		$a_01_2 = {42 61 73 65 36 34 5f 45 6e 63 6f 64 65 } //1 Base64_Encode
		$a_01_3 = {56 65 72 6e 61 6d 44 65 63 72 79 70 74 } //1 VernamDecrypt
		$a_01_4 = {2f 2f 70 61 73 74 65 62 69 6e 2e 63 6f 6d 2f 72 61 77 2f } //1 //pastebin.com/raw/
		$a_01_5 = {61 00 48 00 52 00 30 00 63 00 48 00 4d 00 36 00 4c 00 79 00 39 00 77 00 59 00 58 00 4e 00 30 00 5a 00 57 00 4a 00 70 00 62 00 69 00 35 00 6a 00 62 00 32 00 30 00 76 00 } //1 aHR0cHM6Ly9wYXN0ZWJpbi5jb20v
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}