
rule Trojan_BAT_CobaltStrike_H_MTB{
	meta:
		description = "Trojan:BAT/CobaltStrike.H!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {04 16 07 7e ?? 00 00 04 8e 69 28 ?? 00 00 06 07 d0 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}