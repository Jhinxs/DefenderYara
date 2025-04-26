
rule Trojan_BAT_AgentTesla_JQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {07 09 11 04 6f ?? 00 00 0a 13 06 08 12 06 28 ?? 00 00 0a 6f ?? 00 00 0a 11 04 17 58 13 04 11 04 07 6f ?? 00 00 0a 32 ?? 09 17 58 0d 09 07 6f } //2
		$a_01_1 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //1 GetExportedTypes
		$a_01_2 = {54 6f 41 72 72 61 79 } //1 ToArray
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}