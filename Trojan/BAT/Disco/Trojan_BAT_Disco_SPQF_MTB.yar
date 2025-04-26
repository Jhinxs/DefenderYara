
rule Trojan_BAT_Disco_SPQF_MTB{
	meta:
		description = "Trojan:BAT/Disco.SPQF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 03 07 6f ?? ?? ?? 0a 04 61 d1 6f ?? ?? ?? 0a 26 00 07 17 58 0b 07 03 6f ?? ?? ?? 0a fe 04 0c 08 2d dc } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}