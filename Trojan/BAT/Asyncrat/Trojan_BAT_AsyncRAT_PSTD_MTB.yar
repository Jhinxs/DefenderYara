
rule Trojan_BAT_AsyncRAT_PSTD_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.PSTD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {7e 04 00 00 04 72 0d 00 00 70 7e 1c 00 00 0a 6f ?? 00 00 0a 28 ?? 00 00 06 28 ?? 00 00 06 28 ?? 00 00 06 de 03 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}