
rule Trojan_BAT_AveMaria_NECF_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NECF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {2b 05 2b 0a 2b 0f 2a 28 ?? 00 00 0a 2b f4 28 ?? 00 00 2b 2b ef 28 ?? 00 00 2b 2b ea } //5
		$a_03_1 = {11 08 17 58 13 08 11 08 11 07 8e 69 32 c4 2a 73 ?? 00 00 0a 38 13 ff ff ff 0a 38 12 ff ff ff 28 ?? 00 00 0a 38 0d ff ff ff 28 ?? 00 00 06 38 08 ff ff ff 6f ?? 00 00 0a 38 03 ff ff ff } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5) >=10
 
}