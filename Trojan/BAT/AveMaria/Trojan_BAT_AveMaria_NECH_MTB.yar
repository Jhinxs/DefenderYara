
rule Trojan_BAT_AveMaria_NECH_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NECH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 00 2a 00 28 ?? 00 00 06 28 ?? 00 00 0a 13 00 38 00 00 00 00 dd e6 ff ff ff 26 38 00 00 00 00 14 13 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}