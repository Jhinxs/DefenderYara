
rule Trojan_BAT_AgentTesla_DRR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DRR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 02 08 18 28 ?? ?? ?? 06 1f 10 28 ?? ?? ?? 06 84 28 ?? ?? ?? 06 6f ?? ?? ?? 0a 26 08 18 d6 0c } //1
		$a_03_1 = {08 11 04 02 11 04 91 07 61 06 09 91 61 28 ?? ?? ?? 0a 9c 09 03 6f ?? ?? ?? 0a 17 59 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Trojan_BAT_AgentTesla_DRR_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.DRR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {08 09 11 04 28 ?? ?? ?? 06 13 07 11 07 28 ?? ?? ?? 0a 13 08 07 06 11 08 d2 9c 00 11 04 17 58 13 04 } //1
		$a_01_1 = {00 47 65 74 54 79 70 65 73 00 } //1 䜀瑥祔数s
		$a_01_2 = {00 47 65 74 50 69 78 65 6c 00 } //1 䜀瑥楐數l
		$a_01_3 = {00 54 6f 57 69 6e 33 32 00 } //1
		$a_01_4 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}