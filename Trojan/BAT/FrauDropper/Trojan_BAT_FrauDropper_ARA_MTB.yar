
rule Trojan_BAT_FrauDropper_ARA_MTB{
	meta:
		description = "Trojan:BAT/FrauDropper.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 04 17 58 20 00 01 00 00 5d 13 04 11 05 07 11 04 91 58 20 00 01 00 00 5d 13 05 07 11 04 91 0d 07 11 04 07 11 05 91 9c 07 11 05 09 9c 07 11 04 91 07 11 05 91 58 20 00 01 00 00 5d 13 07 02 11 06 8f 16 00 00 01 25 71 16 00 00 01 07 11 07 91 61 d2 81 16 00 00 01 11 06 17 58 13 06 11 06 02 16 6f ?? ?? ?? 0a 32 98 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}