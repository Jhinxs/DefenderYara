
rule Trojan_BAT_Rozena_SPA_MTB{
	meta:
		description = "Trojan:BAT/Rozena.SPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {02 03 8e 69 20 00 10 00 00 1f 40 28 ?? ?? ?? 06 0a 06 7e ?? ?? ?? 0a 28 ?? ?? ?? 0a 2c 0b 28 ?? ?? ?? 0a 73 1a 00 00 0a 7a 03 16 06 03 8e 69 28 ?? ?? ?? 0a 06 } //3
		$a_01_1 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //1 VirtualAlloc
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1) >=4
 
}