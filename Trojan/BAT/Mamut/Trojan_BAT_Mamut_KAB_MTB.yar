
rule Trojan_BAT_Mamut_KAB_MTB{
	meta:
		description = "Trojan:BAT/Mamut.KAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {16 6a 0b 08 28 ?? 00 00 0a 23 00 00 00 00 00 00 e0 3f 28 ?? 00 00 0a 28 ?? 00 00 0a 28 ?? 00 00 0a 0c 07 17 6a 58 0b 07 20 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}