
rule Trojan_BAT_Formbook_CCHT_MTB{
	meta:
		description = "Trojan:BAT/Formbook.CCHT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 0c 11 0d 61 13 0f 20 1c 00 00 00 fe 0e ?? 00 38 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}