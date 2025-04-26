
rule Adware_MacOS_Pirrit_G{
	meta:
		description = "Adware:MacOS/Pirrit.G,SIGNATURE_TYPE_MACHOHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {64 52 39 79 6a 76 } //1 dR9yjv
		$a_01_1 = {45 49 52 42 52 43 70 } //1 EIRBRCp
		$a_01_2 = {37 3e 7a 34 5d 40 } //1 7>z4]@
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}