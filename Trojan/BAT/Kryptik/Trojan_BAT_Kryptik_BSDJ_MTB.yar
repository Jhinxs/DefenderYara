
rule Trojan_BAT_Kryptik_BSDJ_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.BSDJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 04 00 00 "
		
	strings :
		$a_01_0 = {46 75 6b 61 42 75 6d 70 61 } //2 FukaBumpa
		$a_01_1 = {49 73 43 61 6c 63 75 6c 61 74 65 64 } //2 IsCalculated
		$a_01_2 = {5a 77 61 6d 57 6f 72 74 73 } //3 ZwamWorts
		$a_01_3 = {00 48 69 74 6c 65 72 00 } //2 䠀瑩敬r
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*3+(#a_01_3  & 1)*2) >=9
 
}