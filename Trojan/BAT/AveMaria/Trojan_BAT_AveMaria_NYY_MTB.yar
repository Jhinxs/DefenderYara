
rule Trojan_BAT_AveMaria_NYY_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NYY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {51 00 54 00 38 00 4a 00 39 00 5a 00 4a 00 46 00 38 00 38 00 38 00 38 00 37 00 35 00 37 00 38 00 56 00 48 00 53 00 37 00 48 00 42 00 } //1 QT8J9ZJF88887578VHS7HB
		$a_01_1 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_2 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 MD5CryptoServiceProvider
		$a_01_3 = {50 00 6f 00 6c 00 69 00 74 00 69 00 63 00 } //1 Politic
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_5 = {47 65 74 4f 62 6a 65 63 74 } //1 GetObject
		$a_01_6 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}