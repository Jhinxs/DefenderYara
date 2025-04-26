
rule Trojan_BAT_Lazy_NLY_MTB{
	meta:
		description = "Trojan:BAT/Lazy.NLY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 04 1f 20 6f 43 00 00 0a 13 05 73 ?? ?? ?? 0a 13 06 11 06 20 00 01 00 00 6f ?? ?? ?? 0a 11 06 17 6f ?? ?? ?? 0a 11 06 18 6f 47 00 00 0a 11 06 11 05 } //5
		$a_01_1 = {54 61 73 6b 32 34 4d 61 69 6e } //1 Task24Main
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}