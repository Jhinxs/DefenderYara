
rule Trojan_BAT_AgentTesla_DTN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DTN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_03_0 = {16 13 05 2b 27 00 09 11 04 11 05 28 ?? ?? ?? 06 13 06 11 06 28 ?? ?? ?? 0a 13 07 08 11 07 d2 6f ?? ?? ?? 0a 00 00 11 05 17 58 13 05 11 05 17 fe 04 13 08 11 08 2d ce 07 17 58 0b 00 11 04 17 58 13 04 } //10
		$a_01_1 = {54 6f 57 69 6e 33 32 } //1 ToWin32
		$a_01_2 = {47 65 74 50 69 78 65 6c } //1 GetPixel
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=12
 
}