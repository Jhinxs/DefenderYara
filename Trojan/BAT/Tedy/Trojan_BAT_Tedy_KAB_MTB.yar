
rule Trojan_BAT_Tedy_KAB_MTB{
	meta:
		description = "Trojan:BAT/Tedy.KAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0c 02 07 94 03 6f ?? 00 00 0a 20 ?? 00 00 00 61 5b 0d 09 08 20 00 01 00 00 5a 59 d2 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}