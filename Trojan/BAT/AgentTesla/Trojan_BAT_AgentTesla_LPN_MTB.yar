
rule Trojan_BAT_AgentTesla_LPN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LPN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {16 0b 2b 1c 02 11 04 06 07 28 ?? ?? ?? 06 13 05 09 08 02 11 05 28 ?? ?? ?? 06 d2 9c 07 17 58 0b 07 17 fe 04 13 06 11 06 2d da } //1
		$a_01_1 = {47 65 74 50 69 78 65 6c } //1 GetPixel
		$a_01_2 = {43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 } //1 ColorTranslator
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}