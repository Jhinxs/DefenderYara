
rule PWS_Win32_Fareit_M_MTB{
	meta:
		description = "PWS:Win32/Fareit.M!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {64 00 75 00 6d 00 62 00 73 00 74 00 72 00 75 00 63 00 6b 00 66 00 67 00 } //1 dumbstruckfg
		$a_01_1 = {41 66 73 74 65 6d 6e 69 6e 67 73 72 65 73 75 6c 74 61 74 65 72 } //1 Afstemningsresultater
		$a_01_2 = {77 68 65 65 6c 62 61 72 72 6f 77 65 72 } //1 wheelbarrower
		$a_01_3 = {44 79 72 65 68 6f 73 70 69 74 61 6c 65 74 73 34 } //1 Dyrehospitalets4
		$a_01_4 = {41 6c 64 65 72 73 73 75 6b 6b 65 72 73 79 67 65 39 } //1 Alderssukkersyge9
		$a_01_5 = {53 50 41 43 49 45 53 54 } //1 SPACIEST
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}