
rule Trojan_BAT_AgentTesla_LRE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LRE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 0c 06 03 07 6f ?? ?? ?? 0a 0d 12 03 28 ?? ?? ?? 0a 08 6f ?? ?? ?? 0a 0a 07 17 58 0b 00 17 13 04 2b d7 } //1
		$a_03_1 = {0a 06 61 20 ?? ?? ?? 01 5a 0a 07 17 58 0b 07 02 6f } //1
		$a_01_2 = {57 50 46 6c 69 6e 64 61 6f } //1 WPFlindao
		$a_01_3 = {43 61 6c 63 4d 61 74 72 69 7a } //1 CalcMatriz
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}