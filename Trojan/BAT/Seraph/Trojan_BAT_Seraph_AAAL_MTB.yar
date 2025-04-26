
rule Trojan_BAT_Seraph_AAAL_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AAAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {1c 2c 04 2b 04 2b 09 de 14 28 ?? 00 00 06 2b f5 0a 2b f4 07 2c 06 07 6f ?? 00 00 0a dc 2b 15 2b 16 2b 1b 2b 20 1e 2c d4 de 24 73 ?? ?? 00 0a 2b cd 0b 2b cc 06 2b e8 28 ?? 00 00 2b 2b e3 28 ?? 00 00 2b 2b de 0a 2b dd } //4
		$a_01_1 = {52 65 76 65 72 73 65 } //1 Reverse
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}