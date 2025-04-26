
rule Trojan_BAT_AgentTesla_NDD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {16 13 05 2b 2a 00 09 11 04 11 05 6f ?? ?? ?? 0a 13 07 11 07 28 ?? ?? ?? 0a 13 08 17 13 09 08 11 08 d2 6f ?? ?? ?? 0a 00 00 11 05 17 58 13 05 11 05 17 fe 04 13 0a 11 0a 2d cb 07 17 58 0b } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_NDD_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_03_0 = {7e 01 00 00 04 6f ?? ?? ?? 0a 17 33 2f 7e ?? ?? ?? 04 7e ?? ?? ?? 04 16 6f ?? ?? ?? 0a 74 ?? ?? ?? 01 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 7e ?? ?? ?? 04 16 6f ?? ?? ?? 0a 28 ?? ?? ?? 06 } //5
		$a_03_1 = {06 03 07 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 07 18 58 0b 07 03 6f ?? ?? ?? 0a 32 de } //5
		$a_01_2 = {53 74 61 67 65 49 6e 73 74 72 75 63 74 69 6f 6e 5f 73 } //1 StageInstruction_s
		$a_01_3 = {51 00 72 00 6b 00 79 00 63 00 74 00 61 00 63 00 71 00 71 00 6f 00 66 00 6e 00 69 00 6f 00 6d 00 72 00 75 00 6b 00 72 00 6b 00 70 00 78 00 } //1 Qrkyctacqqofniomrukrkpx
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=12
 
}