
rule Backdoor_BAT_Crysan_LCAA_MTB{
	meta:
		description = "Backdoor:BAT/Crysan.LCAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {11 0a 20 0f 84 36 e2 28 ?? 1a 00 06 28 ?? 03 00 0a 20 2e 84 36 e2 28 ?? 1a 00 06 28 ?? 03 00 0a 6f ?? 05 00 0a 13 18 } //3
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}