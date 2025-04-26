
rule Trojan_BAT_CobaltStrike_ABHM_MTB{
	meta:
		description = "Trojan:BAT/CobaltStrike.ABHM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 06 09 06 9a 1f 10 28 ?? ?? ?? 0a 9c 06 17 d6 0a 06 20 ?? ?? ?? 00 fe 04 13 05 11 05 2d e1 } //4
		$a_01_1 = {50 6f 6c 69 63 79 50 6c 75 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 PolicyPlus.Resources.resources
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}