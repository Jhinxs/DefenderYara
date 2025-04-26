
rule Trojan_BAT_Rozena_SPC_MTB{
	meta:
		description = "Trojan:BAT/Rozena.SPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 17 58 0b 08 06 8e 69 17 58 33 11 06 08 8f ?? ?? ?? 01 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 08 06 8e 69 2e 1b 06 08 8f ?? ?? ?? 01 28 ?? ?? ?? 0a 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 08 17 58 0c 08 06 8e 69 32 b8 } //1
		$a_01_1 = {61 6e 74 69 2d 76 69 72 75 73 2e 64 6c 6c } //1 anti-virus.dll
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}