
rule Virus_O97M_Vakslodak_gen{
	meta:
		description = "Virus:O97M/Vakslodak.gen,SIGNATURE_TYPE_MACROHSTR_EXT,14 00 14 00 06 00 00 "
		
	strings :
		$a_00_0 = {61 70 70 6c 69 63 61 74 69 6f 6e 2e 73 74 61 72 74 75 70 70 61 74 68 26 22 2f 22 26 22 6f 66 66 69 63 65 5f 2e 78 6c 73 22 } //10 application.startuppath&"/"&"office_.xls"
		$a_00_1 = {63 6f 64 65 66 6f 72 67 6f 74 6f 6e 6f 77 74 68 65 6e 3d 69 6e 74 28 72 6e 64 28 } //6 codeforgotonowthen=int(rnd(
		$a_00_2 = {74 68 65 6e 6b 69 6c 6c 22 2a 2e 68 6c 70 22 } //1 thenkill"*.hlp"
		$a_00_3 = {74 68 65 6e 6b 69 6c 6c 22 2a 2e 62 2a 22 } //1 thenkill"*.b*"
		$a_00_4 = {74 68 65 6e 6b 69 6c 6c 22 2a 2e 63 2a 22 } //1 thenkill"*.c*"
		$a_00_5 = {74 68 65 6e 6b 69 6c 6c 22 2a 2e 64 6c 6c 22 } //1 thenkill"*.dll"
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*6+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=20
 
}