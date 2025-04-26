
rule Trojan_BAT_Rozena_SSVP_MTB{
	meta:
		description = "Trojan:BAT/Rozena.SSVP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 01 00 00 "
		
	strings :
		$a_03_0 = {07 11 06 07 11 06 91 1e 59 20 ?? ?? ?? 00 5f d2 9c 11 06 17 58 13 06 11 06 07 8e 69 32 e2 } //3
	condition:
		((#a_03_0  & 1)*3) >=3
 
}