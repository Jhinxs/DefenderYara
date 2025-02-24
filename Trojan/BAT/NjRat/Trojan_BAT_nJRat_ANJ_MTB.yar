
rule Trojan_BAT_nJRat_ANJ_MTB{
	meta:
		description = "Trojan:BAT/nJRat.ANJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {08 d2 61 d2 81 0d 00 00 01 11 0a 20 ff 00 00 00 5f 2d 0b 08 08 5a 20 b7 5c 8a 00 6a 5e 0c 11 0a 17 58 13 0a 11 0a 11 08 8e 69 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
rule Trojan_BAT_nJRat_ANJ_MTB_2{
	meta:
		description = "Trojan:BAT/nJRat.ANJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {13 64 11 64 16 11 62 a2 00 11 64 17 07 11 61 17 28 ?? 00 00 0a a2 00 11 64 18 11 0c 11 61 17 28 ?? 00 00 0a a2 00 11 64 19 11 17 11 61 17 28 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_nJRat_ANJ_MTB_3{
	meta:
		description = "Trojan:BAT/nJRat.ANJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0d 2b 41 7e 07 00 00 04 11 04 6f ?? ?? ?? 0a 74 03 00 00 01 6f ?? ?? ?? 0a 2c 25 11 04 08 fe 01 16 fe 01 2c 17 7e 07 00 00 04 08 7e 07 00 00 04 11 04 6f } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}
rule Trojan_BAT_nJRat_ANJ_MTB_4{
	meta:
		description = "Trojan:BAT/nJRat.ANJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {1f 09 8d 1e 00 00 01 13 0d 11 0d 16 11 04 a2 00 11 0d 17 11 05 08 17 28 ?? ?? ?? 0a a2 00 11 0d 18 11 06 08 17 28 ?? ?? ?? 0a a2 00 11 0d 19 11 07 08 17 28 } //2
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_nJRat_ANJ_MTB_5{
	meta:
		description = "Trojan:BAT/nJRat.ANJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {73 18 00 00 0a 0a 06 28 19 00 00 0a 03 6f 1a 00 00 0a 6f 1b 00 00 0a 0b 73 1c 00 00 0a 0c 08 07 6f 1d 00 00 0a 00 08 18 6f 1e 00 00 0a 00 08 6f 1f 00 00 0a 02 16 02 8e 69 6f 20 00 00 0a 0d 09 13 04 2b 00 11 04 } //2
		$a_01_1 = {54 72 69 70 6c 65 44 45 53 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 TripleDESCryptoServiceProvider
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_nJRat_ANJ_MTB_6{
	meta:
		description = "Trojan:BAT/nJRat.ANJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {02 0b 16 0c 2b 52 07 08 6f ?? 00 00 0a 0d 16 13 04 2b 33 7e 5a 00 00 04 11 04 6f ?? 00 00 0a 09 33 1e 06 7e 59 00 00 04 11 04 6f ?? 00 00 0a 13 05 12 05 28 ?? 01 00 0a 28 } //3
		$a_03_1 = {2b 12 02 28 ?? 00 00 06 2c 06 16 28 ?? 00 00 0a 06 17 58 0a 06 73 15 00 00 0a 19 1f 0a 6f } //2
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*2) >=5
 
}