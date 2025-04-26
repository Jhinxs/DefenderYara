
rule Trojan_BAT_Nanocore_ABOQ_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.ABOQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {08 11 04 07 11 04 9a 1f 10 28 ?? ?? ?? 0a 9c 00 11 04 17 58 13 04 11 04 07 8e 69 fe 04 13 05 11 05 2d dc } //5
		$a_01_1 = {46 6f 72 6d 53 69 6d 56 69 6c 6c 65 } //1 FormSimVille
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}