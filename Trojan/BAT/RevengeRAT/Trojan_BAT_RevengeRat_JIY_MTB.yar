
rule Trojan_BAT_RevengeRat_JIY_MTB{
	meta:
		description = "Trojan:BAT/RevengeRat.JIY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {73 25 00 00 0a 0a 06 28 ?? ?? ?? 0a 03 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0b 73 29 00 00 0a 0c 08 07 6f ?? ?? ?? 0a 00 08 18 6f ?? ?? ?? 0a 00 08 6f ?? ?? ?? 0a 02 16 02 8e 69 6f ?? ?? ?? 0a 0d 09 13 04 2b 00 11 04 2a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}