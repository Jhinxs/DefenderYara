
rule Trojan_BAT_Remcos_MBDK_MTB{
	meta:
		description = "Trojan:BAT/Remcos.MBDK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 14 d0 ?? 00 00 01 28 ?? 00 00 0a 72 ?? ?? ?? 70 17 8d ?? 00 00 01 25 16 07 25 0c 1c 6f ?? 00 00 0a a2 25 13 05 14 14 17 8d ?? 00 00 01 25 16 17 9c 25 13 06 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}