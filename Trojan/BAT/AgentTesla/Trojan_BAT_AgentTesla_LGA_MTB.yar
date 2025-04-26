
rule Trojan_BAT_AgentTesla_LGA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 13 04 2b 36 00 08 09 11 04 6f ?? ?? ?? 0a 13 05 08 09 11 04 6f ?? ?? ?? 0a 13 06 16 13 07 02 11 06 28 ?? ?? ?? 06 13 07 17 13 08 00 07 06 11 07 d2 9c 00 00 11 04 17 58 13 04 11 04 17 fe 04 13 09 11 09 2d } //1
		$a_01_1 = {54 6f 57 69 6e 33 32 } //1 ToWin32
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}