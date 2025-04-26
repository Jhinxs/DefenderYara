
rule Trojan_BAT_PureCrypter_RDA_MTB{
	meta:
		description = "Trojan:BAT/PureCrypter.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {64 34 65 39 66 66 33 35 2d 31 33 65 32 2d 34 63 37 34 2d 61 34 39 65 2d 65 63 62 31 65 61 61 61 33 66 61 63 } //1 d4e9ff35-13e2-4c74-a49e-ecb1eaaa3fac
		$a_01_1 = {46 69 6c 65 20 53 69 67 6e 61 74 75 72 65 20 56 65 72 69 66 69 63 61 74 69 6f 6e } //1 File Signature Verification
		$a_01_2 = {56 72 6c 61 77 61 64 7a } //1 Vrlawadz
		$a_01_3 = {2f 00 2f 00 38 00 30 00 2e 00 36 00 36 00 2e 00 37 00 35 00 2e 00 33 00 37 00 2f 00 61 00 2d 00 58 00 6d 00 69 00 66 00 61 00 67 00 6c 00 2e 00 64 00 6c 00 6c 00 } //1 //80.66.75.37/a-Xmifagl.dll
		$a_01_4 = {45 00 6f 00 78 00 68 00 69 00 6e 00 65 00 6d 00 6c 00 76 00 78 00 79 00 67 00 66 00 70 00 65 00 68 00 } //1 Eoxhinemlvxygfpeh
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}