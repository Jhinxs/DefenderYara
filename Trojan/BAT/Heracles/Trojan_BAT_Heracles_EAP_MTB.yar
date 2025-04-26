
rule Trojan_BAT_Heracles_EAP_MTB{
	meta:
		description = "Trojan:BAT/Heracles.EAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {08 11 05 8f ?? 00 00 01 25 13 06 11 06 47 03 11 05 91 06 09 91 61 07 61 d6 b4 52 09 04 6f ?? 00 00 0a 17 da 33 04 16 0d 2b 04 09 17 d6 0d 11 05 17 d6 13 05 11 05 11 04 31 c6 08 03 8e 69 1f 70 07 61 b4 9c 08 2a } //2
		$a_03_1 = {0a 04 09 6f ?? 00 00 0a 61 28 ?? 00 00 0a 13 04 11 04 6f ?? 00 00 0a 17 fe 01 2c 0e 72 } //1
		$a_01_2 = {58 4f 52 45 6e 63 72 79 70 74 } //1 XOREncrypt
		$a_01_3 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}