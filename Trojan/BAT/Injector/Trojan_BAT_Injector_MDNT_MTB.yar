
rule Trojan_BAT_Injector_MDNT_MTB{
	meta:
		description = "Trojan:BAT/Injector.MDNT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {7e 2b 00 00 0a 0a 28 ?? ?? ?? 0a 00 00 00 00 00 7e 02 00 00 04 6f ?? ?? ?? 0a 0a 02 06 1f 2d 28 ?? ?? ?? 06 0b 07 16 9a 0c 02 08 07 17 9a 28 ?? ?? ?? 06 0d 02 09 1f 20 28 ?? ?? ?? 06 13 04 73 34 00 00 0a 13 05 00 11 04 13 06 16 13 07 2b 41 11 06 11 07 9a 13 08 00 02 11 08 28 ?? ?? ?? 06 17 fe 04 16 fe 01 13 09 11 09 2c 1e 00 11 08 28 ?? ?? ?? 0a 13 0a 11 0a 28 ?? ?? ?? 0a 13 0b 11 05 11 0b 6f ?? ?? ?? 0a 00 00 00 11 07 17 58 13 07 11 07 11 06 8e 69 32 b7 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}