
rule Trojan_BAT_AgentTesla_MBGJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBGJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 00 78 00 76 00 68 00 4d 00 66 00 6e 00 79 00 54 00 72 00 42 00 41 00 72 00 45 00 42 00 51 00 41 00 79 00 4c 00 68 00 41 00 68 00 5a 00 42 00 4f 00 77 00 } //10 AxvhMfnyTrBArEBQAyLhAhZBOw
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_2 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_3 = {52 43 32 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 RC2CryptoServiceProvider
		$a_01_4 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=14
 
}