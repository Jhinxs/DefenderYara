
rule Trojan_BAT_NjRAT_PTDS_MTB{
	meta:
		description = "Trojan:BAT/NjRAT.PTDS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {20 0c f0 00 00 28 ?? 00 00 06 20 ca e4 00 00 28 ?? 00 00 06 03 28 ?? 00 00 0a 6f 26 00 00 0a 2c 35 08 28 ?? 00 00 0a 28 16 00 00 0a 0d 2b 04 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}