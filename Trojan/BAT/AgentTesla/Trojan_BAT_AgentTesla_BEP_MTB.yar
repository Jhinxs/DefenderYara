
rule Trojan_BAT_AgentTesla_BEP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BEP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_02_0 = {07 09 16 11 04 6f ?? ?? ?? 0a 2b 00 11 04 09 8e 69 2e 02 2b 0f 08 09 16 09 8e 69 6f ?? ?? ?? 0a 13 04 2b 0a 07 28 ?? ?? ?? 06 13 05 2b 06 11 04 2c da 2b } //10
		$a_81_1 = {43 6c 61 73 73 4c 69 62 72 61 72 79 31 2e 64 6c 6c } //1 ClassLibrary1.dll
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_3 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=13
 
}