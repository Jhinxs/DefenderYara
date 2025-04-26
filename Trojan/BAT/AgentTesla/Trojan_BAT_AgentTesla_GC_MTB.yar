
rule Trojan_BAT_AgentTesla_GC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {4d 75 6c 74 69 54 6f 6b 65 6e 2e 52 65 73 6f 75 72 63 65 73 } //1 MultiToken.Resources
		$a_81_1 = {41 5a 58 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 } //1 AZXCCCCCCCCCCCCCCCCCCC
		$a_81_2 = {41 6d 49 59 6f 75 72 50 61 72 65 6e 74 } //1 AmIYourParent
		$a_81_3 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_81_4 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_5 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}