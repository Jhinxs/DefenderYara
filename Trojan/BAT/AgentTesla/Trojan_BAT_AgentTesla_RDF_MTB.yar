
rule Trojan_BAT_AgentTesla_RDF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 "
		
	strings :
		$a_03_0 = {11 07 8f 01 00 00 01 25 71 01 00 00 01 11 07 [0-02] 58 ?? 59 20 ff 00 00 00 5f d2 61 d2 81 01 00 00 01 1f 0a 13 10 } //2
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 MD5CryptoServiceProvider
		$a_01_3 = {43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 } //1 ColorTranslator
		$a_01_4 = {54 6f 57 69 6e 33 32 } //1 ToWin32
		$a_01_5 = {47 65 74 50 69 78 65 6c } //1 GetPixel
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=7
 
}