
rule Trojan_BAT_Seraph_IRAA_MTB{
	meta:
		description = "Trojan:BAT/Seraph.IRAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {16 0d 38 16 00 00 00 08 09 07 09 91 72 01 00 00 70 28 ?? 00 00 0a 59 d2 9c 09 17 58 0d 09 07 8e 69 32 e4 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}