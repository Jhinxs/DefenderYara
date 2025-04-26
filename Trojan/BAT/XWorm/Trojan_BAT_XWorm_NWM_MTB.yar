
rule Trojan_BAT_XWorm_NWM_MTB{
	meta:
		description = "Trojan:BAT/XWorm.NWM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {02 28 2f 00 00 06 28 ?? 00 00 06 0b 07 8e 69 28 ?? 00 00 0a 72 ?? 00 00 70 28 ?? 00 00 0a 28 ?? 00 00 06 0c 06 08 16 08 8e 69 6f ?? 00 00 0a } //5
		$a_03_1 = {6f 62 00 00 0a 6f ?? 00 00 0a 00 07 18 6f ?? 00 00 0a 00 07 6f ?? 00 00 0a 0d 02 13 04 09 11 04 16 11 04 8e 69 6f ?? 00 00 0a } //5
		$a_01_2 = {50 00 6c 00 75 00 67 00 69 00 6e 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 Plugin.Resources
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_01_2  & 1)*1) >=11
 
}