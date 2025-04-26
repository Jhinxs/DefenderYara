
rule Trojan_BAT_Injuke_KAD_MTB{
	meta:
		description = "Trojan:BAT/Injuke.KAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_80_0 = {54 42 44 74 53 54 61 65 6c 6d 54 6f 46 72 61 65 2e 64 6c 6c } //TBDtSTaelmToFrae.dll  1
		$a_80_1 = {51 5a 74 63 5a 54 72 4e 6a 6a 67 74 2e 64 6c 6c } //QZtcZTrNjjgt.dll  1
		$a_80_2 = {77 70 72 57 7a 70 46 49 63 44 46 48 2e 64 6c 6c } //wprWzpFIcDFH.dll  1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1) >=3
 
}
rule Trojan_BAT_Injuke_KAD_MTB_2{
	meta:
		description = "Trojan:BAT/Injuke.KAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {39 00 35 00 2e 00 32 00 31 00 34 00 2e 00 32 00 34 00 2e 00 33 00 37 00 } //1 95.214.24.37
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {54 72 69 70 6c 65 44 45 53 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 TripleDESCryptoServiceProvider
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}