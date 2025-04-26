
rule Trojan_BAT_Vidar_ABSR_MTB{
	meta:
		description = "Trojan:BAT/Vidar.ABSR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {0b 07 06 6f ?? 00 00 0a 07 18 6f ?? 00 00 0a 07 18 6f ?? 00 00 0a 07 07 6f ?? 00 00 0a 07 6f ?? 00 00 0a 6f ?? 00 00 0a 0c 02 73 ?? 00 00 0a 0d 09 08 16 73 ?? 00 00 0a 13 04 02 8e 69 8d ?? 00 00 01 13 05 11 04 11 05 16 11 05 8e 69 6f ?? 00 00 0a 13 06 11 05 11 06 28 ?? 00 00 2b 28 ?? 00 00 2b 13 07 de 2a 11 04 2c 07 11 04 6f ?? 00 00 0a dc } //4
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=6
 
}