
rule Trojan_BAT_Injuke_ASDP_MTB{
	meta:
		description = "Trojan:BAT/Injuke.ASDP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 07 11 10 17 8d ?? 00 00 01 25 16 11 06 11 10 9a 1f 10 28 ?? 00 00 0a 86 9c 6f ?? 00 00 0a 00 11 10 17 d6 13 10 11 10 11 0f 31 d4 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}