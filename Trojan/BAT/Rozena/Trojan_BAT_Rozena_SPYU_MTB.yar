
rule Trojan_BAT_Rozena_SPYU_MTB{
	meta:
		description = "Trojan:BAT/Rozena.SPYU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 8e 69 20 ?? ?? ?? 00 1f 40 28 ?? ?? ?? 06 13 05 11 05 } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}