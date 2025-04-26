
rule Trojan_BAT_AgentTesla_MLK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MLK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {25 16 07 a2 25 17 19 8d ?? ?? 00 01 25 16 7e ?? ?? 00 04 a2 25 17 7e ?? ?? 00 04 a2 25 18 72 ?? ?? 00 70 a2 a2 6f ?? ?? 00 0a 26 } //1
		$a_80_1 = {43 4d 53 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //CMS.Resources.resources  1
		$a_80_2 = {43 4d 53 2e 48 65 74 74 2e 72 65 73 6f 75 72 63 65 73 } //CMS.Hett.resources  1
	condition:
		((#a_02_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1) >=3
 
}