
rule Trojan_BAT_Seraph_SPPX_MTB{
	meta:
		description = "Trojan:BAT/Seraph.SPPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 07 18 5d 2d 07 28 ?? ?? ?? 06 2b 05 28 ?? ?? ?? 06 06 16 06 8e 69 28 ?? ?? ?? 0a 2b 10 07 16 2f 07 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}