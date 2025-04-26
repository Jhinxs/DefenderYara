
rule Trojan_BAT_AgentTesla_DWA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DWA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_03_0 = {16 0b 2b 22 11 05 06 07 28 ?? ?? ?? 06 13 07 11 07 28 ?? ?? ?? 0a 13 08 11 04 11 08 d2 6f ?? ?? ?? 0a 07 17 58 0b 07 17 fe 04 13 09 11 09 2d d4 09 17 58 0d 06 17 58 0a } //10
		$a_81_1 = {54 6f 57 69 6e 33 32 } //1 ToWin32
		$a_81_2 = {47 65 74 50 69 78 65 6c } //1 GetPixel
	condition:
		((#a_03_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=12
 
}