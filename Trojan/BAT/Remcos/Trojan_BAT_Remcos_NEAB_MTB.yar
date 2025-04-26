
rule Trojan_BAT_Remcos_NEAB_MTB{
	meta:
		description = "Trojan:BAT/Remcos.NEAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 8e 69 5d 91 02 08 91 61 d2 6f ?? 00 00 0a 08 17 58 0c 08 02 8e 69 32 e1 07 2a } //10
		$a_03_1 = {2b 03 2b 08 2a 28 ?? 00 00 06 2b f6 28 ?? 00 00 0a 2b f1 } //5
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*5) >=15
 
}