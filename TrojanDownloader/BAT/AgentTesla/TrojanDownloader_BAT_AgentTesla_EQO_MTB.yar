
rule TrojanDownloader_BAT_AgentTesla_EQO_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.EQO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {09 8e 69 8d ?? ?? ?? 01 13 0a 11 09 11 0a 16 11 0a 8e 69 6f ?? ?? ?? 0a 13 0b 11 08 6f ?? ?? ?? 0a 11 09 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 11 0a 16 } //1
		$a_01_1 = {55 00 24 00 24 00 76 00 58 00 2b 00 78 00 6c 00 79 00 } //1 U$$vX+xly
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 41 73 79 6e 63 } //1 DownloadFileAsync
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_01_5 = {63 69 70 68 65 72 54 65 78 74 } //1 cipherText
		$a_01_6 = {70 61 73 73 50 68 72 61 73 65 } //1 passPhrase
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}