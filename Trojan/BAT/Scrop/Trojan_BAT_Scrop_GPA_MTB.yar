
rule Trojan_BAT_Scrop_GPA_MTB{
	meta:
		description = "Trojan:BAT/Scrop.GPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {11 04 74 4f 00 00 01 11 05 11 0a 74 0c 00 00 1b 11 0c 11 07 58 11 09 59 93 61 11 0b 75 0c 00 00 1b 11 09 11 0c 58 1f 11 58 11 08 5d 93 61 d1 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}