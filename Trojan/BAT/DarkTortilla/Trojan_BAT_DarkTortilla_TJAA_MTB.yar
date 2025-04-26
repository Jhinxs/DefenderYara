
rule Trojan_BAT_DarkTortilla_TJAA_MTB{
	meta:
		description = "Trojan:BAT/DarkTortilla.TJAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {1e 13 0b 2b 97 11 04 75 ?? 00 00 01 09 75 ?? 00 00 01 6f ?? 00 00 0a 17 73 ?? 00 00 0a 13 05 11 05 74 ?? 00 00 01 02 16 02 8e 69 6f ?? 00 00 0a 1d 13 0b 38 ?? ff ff ff 11 05 75 ?? 00 00 01 6f ?? 00 00 0a 11 04 74 ?? 00 00 01 6f ?? 00 00 0a 0c 1a 13 0b 38 } //4
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}