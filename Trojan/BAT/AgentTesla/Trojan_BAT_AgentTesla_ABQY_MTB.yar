
rule Trojan_BAT_AgentTesla_ABQY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABQY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 06 07 6f ?? 00 00 0a 13 06 08 06 12 06 28 ?? 00 00 0a 9c 07 17 58 0b 07 03 6f ?? 00 00 0a fe 04 0d 09 2d db } //6
		$a_01_1 = {47 65 74 50 69 78 65 6c } //1 GetPixel
	condition:
		((#a_03_0  & 1)*6+(#a_01_1  & 1)*1) >=7
 
}