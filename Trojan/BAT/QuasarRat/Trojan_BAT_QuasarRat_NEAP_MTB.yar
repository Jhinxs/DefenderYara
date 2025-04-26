
rule Trojan_BAT_QuasarRat_NEAP_MTB{
	meta:
		description = "Trojan:BAT/QuasarRat.NEAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 03 00 00 "
		
	strings :
		$a_01_0 = {64 66 33 31 31 34 63 33 2d 34 33 65 33 2d 34 62 34 34 2d 62 35 31 66 2d 38 39 63 63 62 66 32 34 37 63 37 36 } //5 df3114c3-43e3-4b44-b51f-89ccbf247c76
		$a_01_1 = {53 41 49 54 4d 43 61 6c 63 75 6c 61 74 6f 72 2e 65 78 65 } //2 SAITMCalculator.exe
		$a_01_2 = {62 79 20 42 4c 44 20 44 69 6c 61 6e 67 61 } //2 by BLD Dilanga
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=9
 
}