
rule Trojan_BAT_MalLoader_A{
	meta:
		description = "Trojan:BAT/MalLoader.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {00 00 0a 0a 20 00 04 00 00 8d ?? 00 00 01 0b 73 ?? 00 00 0a 0c 06 07 16 07 8e 69 6f ?? 00 00 0a 0d 09 16 30 0a 08 6f ?? 00 00 0a 13 04 de 1f 08 07 16 09 6f ?? 00 00 0a 2b db 08 2c 06 08 6f ?? 00 00 0a dc 06 2c 06 06 6f ?? 00 00 0a dc 11 04 2a } //1
		$a_03_1 = {00 00 0a 0a 20 e8 03 00 00 28 ?? 00 00 0a 06 6f ?? 00 00 0a 16 9a 0b 02 07 04 6f ?? 00 00 0a 7d 02 00 00 04 07 28 ?? 00 00 0a 0c 08 2a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}