
rule Backdoor_BAT_Bladabindi_EUAA_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.EUAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 11 06 28 ?? 00 00 0a 6f ?? 00 00 0a 0b 07 14 72 e1 3c 00 70 16 8d ?? 00 00 01 14 14 14 28 ?? 00 00 0a 14 72 f7 3c 00 70 18 8d ?? 00 00 01 13 57 11 57 16 14 a2 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}