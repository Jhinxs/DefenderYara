
rule Trojan_BAT_FormBook_NBGA_MTB{
	meta:
		description = "Trojan:BAT/FormBook.NBGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {46 00 61 00 62 00 72 00 61 00 6b 00 61 00 } //1 Fabraka
		$a_01_1 = {54 00 35 00 41 00 41 00 5a 00 } //1 T5AAZ
		$a_01_2 = {43 6f 6d 70 75 74 65 48 61 73 68 } //1 ComputeHash
		$a_01_3 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_4 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_5 = {4c 00 74 00 2e 00 4c 00 45 00 } //1 Lt.LE
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}