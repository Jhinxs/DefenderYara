
rule Trojan_BAT_Racoon_CC_MTB{
	meta:
		description = "Trojan:BAT/Racoon.CC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {11 04 17 58 13 04 11 04 20 00 01 00 00 5d 13 04 11 06 11 0a 11 04 94 58 13 06 11 06 20 00 01 00 00 5d 13 06 11 0a 11 04 94 13 08 11 0a 11 04 11 0a 11 06 94 9e 11 0a 11 06 11 08 9e 11 0a 11 0a 11 04 94 11 0a 11 06 94 58 20 00 01 00 00 5d 94 13 07 09 11 05 08 11 05 91 11 07 61 d2 9c 11 05 17 58 13 05 11 05 08 8e 69 } //5
	condition:
		((#a_01_0  & 1)*5) >=5
 
}