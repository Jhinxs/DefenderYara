
rule Trojan_BAT_QuasarRat_NN_MTB{
	meta:
		description = "Trojan:BAT/QuasarRat.NN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {61 13 0f 26 16 13 0a 38 2f ?? ?? ?? 11 04 11 0a 8f 47 ?? ?? ?? 25 71 47 ?? ?? ?? 11 08 11 09 5a 11 0c 58 ?? ?? ?? ?? ?? ?? ?? ?? ?? 33 61 5e d2 61 d2 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}