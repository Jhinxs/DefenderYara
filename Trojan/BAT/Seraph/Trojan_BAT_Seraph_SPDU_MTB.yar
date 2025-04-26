
rule Trojan_BAT_Seraph_SPDU_MTB{
	meta:
		description = "Trojan:BAT/Seraph.SPDU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 2b d9 06 2b e0 0a 2b e4 06 2b e3 03 2b e5 28 ?? ?? ?? 2b 2b e5 28 ?? ?? ?? 2b 2b e0 28 1a } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}