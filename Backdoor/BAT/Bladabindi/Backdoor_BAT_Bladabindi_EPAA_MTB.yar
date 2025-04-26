
rule Backdoor_BAT_Bladabindi_EPAA_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.EPAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 18 2b a7 06 28 ?? 00 00 0a 72 f0 0a 01 70 1e 28 ?? 00 00 06 18 19 28 ?? 00 00 06 0b 19 2b 8b 28 ?? 00 00 0a 07 6f ?? 00 00 0a 0c } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}