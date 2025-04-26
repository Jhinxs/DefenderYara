
rule Trojan_BAT_ClipBanker_AADU_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.AADU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {07 04 1d 3a ?? 00 00 00 26 26 00 07 07 6f ?? 00 00 0a 07 6f ?? 00 00 0a 6f ?? 00 00 0a 16 39 ?? 00 00 00 26 02 73 ?? 00 00 0a 18 3a ?? 00 00 00 26 00 09 08 16 73 ?? 00 00 0a 16 2c 48 26 16 2d 01 00 73 ?? 00 00 0a 13 05 00 1d 2c fc 11 04 11 05 6f ?? 00 00 0a 00 11 05 6f ?? 00 00 0a 0a 1b 2c 01 00 de 0d 11 05 2c 08 11 05 6f ?? 00 00 0a 00 dc } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}