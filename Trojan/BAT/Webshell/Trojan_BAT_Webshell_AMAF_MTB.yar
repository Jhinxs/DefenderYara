
rule Trojan_BAT_Webshell_AMAF_MTB{
	meta:
		description = "Trojan:BAT/Webshell.AMAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 25 16 9a 74 ?? 00 00 01 fe ?? ?? ?? 25 17 9a 74 ?? 00 00 01 fe ?? ?? ?? 25 19 9a 17 28 ?? 00 00 0a 0b 26 28 ?? 00 00 0a 26 03 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}