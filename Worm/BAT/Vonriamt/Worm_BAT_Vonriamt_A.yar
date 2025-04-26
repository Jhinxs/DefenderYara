
rule Worm_BAT_Vonriamt_A{
	meta:
		description = "Worm:BAT/Vonriamt.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {56 61 6e 54 6f 4d 52 41 54 } //2 VanToMRAT
		$a_01_1 = {6e 6a 4c 6f 67 67 65 72 } //2 njLogger
		$a_01_2 = {55 53 42 00 45 00 63 61 6d 00 } //1 单BE慣m
		$a_01_3 = {43 52 44 50 00 43 52 44 50 31 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}