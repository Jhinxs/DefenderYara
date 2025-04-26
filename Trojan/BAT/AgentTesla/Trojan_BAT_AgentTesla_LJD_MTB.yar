
rule Trojan_BAT_AgentTesla_LJD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LJD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 13 04 2b 2a 00 08 09 11 04 6f ?? ?? ?? 0a 13 05 08 09 11 04 6f ?? ?? ?? 0a 13 06 07 06 02 11 06 28 ?? ?? ?? 06 d2 9c 00 11 04 17 58 13 04 11 04 17 fe 04 13 07 11 07 2d cb } //1
		$a_01_1 = {47 65 74 50 69 78 65 6c } //1 GetPixel
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}