
rule Trojan_BAT_Zusy_RDC_MTB{
	meta:
		description = "Trojan:BAT/Zusy.RDC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {37 37 35 39 62 39 38 61 2d 64 64 35 33 2d 34 37 38 66 2d 62 30 63 31 2d 30 64 64 37 39 61 35 66 34 36 61 35 } //1 7759b98a-dd53-478f-b0c1-0dd79a5f46a5
		$a_01_1 = {6c 6f 61 64 65 72 } //1 loader
		$a_01_2 = {43 6f 6d 70 75 74 65 48 61 73 68 } //1 ComputeHash
		$a_01_3 = {63 61 6e 74 20 64 65 6f 62 66 75 73 63 61 74 65 20 3a 29 29 } //1 cant deobfuscate :))
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}