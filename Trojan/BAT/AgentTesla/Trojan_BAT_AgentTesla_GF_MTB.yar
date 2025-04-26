
rule Trojan_BAT_AgentTesla_GF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 07 00 00 "
		
	strings :
		$a_02_0 = {07 08 16 20 00 10 00 00 6f ?? ?? ?? 0a 13 04 11 04 16 fe 02 13 05 11 05 2c 0c 09 08 16 11 04 6f ?? ?? ?? 0a 00 00 00 00 11 04 16 fe 02 13 06 11 06 2d cc } //10
		$a_81_1 = {41 5a 58 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 } //5 AZXCCCCCCCCCCCCCCCCCCC
		$a_81_2 = {42 6f 6f 6b 73 74 6f 72 65 4d 61 6e 61 67 65 6d 65 6e 74 2e 47 55 49 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //5 BookstoreManagement.GUI.My.Resources
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_4 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_5 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_81_6 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*5+(#a_81_2  & 1)*5+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=19
 
}