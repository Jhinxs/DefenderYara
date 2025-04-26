
rule Trojan_BAT_AgentTesla_LTA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LTA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 13 06 2b 28 00 11 04 11 05 11 06 28 ?? ?? ?? 06 13 09 11 09 28 ?? ?? ?? 0a 13 0a 09 11 0a d2 6f ?? ?? ?? 0a 00 00 11 06 17 58 13 06 11 06 17 fe 04 13 0b 11 0b 2d cd } //1
		$a_01_1 = {47 65 74 50 69 78 65 6c } //1 GetPixel
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}