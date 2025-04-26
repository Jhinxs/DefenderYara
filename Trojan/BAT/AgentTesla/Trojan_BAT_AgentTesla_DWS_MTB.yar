
rule Trojan_BAT_AgentTesla_DWS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DWS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {02 6c 23 ff b9 f4 ee 2a 81 f7 3f 5b 28 ?? ?? ?? 06 b7 28 ?? ?? ?? 06 28 ?? ?? ?? 06 0b 07 0a } //1
		$a_01_1 = {69 00 66 00 75 00 5f 00 54 00 65 00 } //1 ifu_Te
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}