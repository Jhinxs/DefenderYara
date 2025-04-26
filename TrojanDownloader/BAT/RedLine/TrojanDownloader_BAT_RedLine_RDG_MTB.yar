
rule TrojanDownloader_BAT_RedLine_RDG_MTB{
	meta:
		description = "TrojanDownloader:BAT/RedLine.RDG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {62 31 31 32 33 38 33 64 2d 34 30 33 31 2d 34 39 31 63 2d 39 65 61 62 2d 38 65 63 33 33 63 30 30 33 38 64 64 } //1 b112383d-4031-491c-9eab-8ec33c0038dd
		$a_01_1 = {76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 6f 00 66 00 20 00 43 00 72 00 79 00 70 00 74 00 6f 00 4f 00 62 00 66 00 75 00 73 00 63 00 61 00 74 00 6f 00 72 00 } //1 version of CryptoObfuscator
		$a_01_2 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //1 OpenProcess
		$a_01_3 = {47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 49 64 } //1 GetCurrentProcessId
		$a_01_4 = {4c 6f 61 64 4c 69 62 72 61 72 79 } //1 LoadLibrary
		$a_01_5 = {53 6f 63 6b 65 74 } //1 Socket
		$a_01_6 = {54 68 72 65 61 64 53 74 61 72 74 } //1 ThreadStart
		$a_01_7 = {49 6e 76 6f 6b 65 } //1 Invoke
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}