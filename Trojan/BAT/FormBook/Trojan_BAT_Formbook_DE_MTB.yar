
rule Trojan_BAT_Formbook_DE_MTB{
	meta:
		description = "Trojan:BAT/Formbook.DE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {24 64 66 31 66 36 65 36 31 2d 30 32 32 38 2d 34 32 64 30 2d 39 63 63 39 2d 62 64 66 36 63 38 33 65 35 36 31 31 } //1 $df1f6e61-0228-42d0-9cc9-bdf6c83e5611
		$a_81_1 = {64 61 74 61 62 61 73 65 43 6f 6e 6e 65 63 74 69 6f 6e 53 74 72 69 6e 67 } //1 databaseConnectionString
		$a_81_2 = {73 74 75 64 65 6e 74 73 43 6f 6e 6e 65 63 74 69 6f 6e 53 74 72 69 6e 67 } //1 studentsConnectionString
		$a_81_3 = {53 74 75 64 65 6e 74 5f 4d 61 6e 61 67 65 6d 65 6e 74 } //1 Student_Management
		$a_81_4 = {49 43 6c 6f 6e 65 61 62 6c 65 } //1 ICloneable
		$a_81_5 = {67 65 74 5f 57 68 69 74 65 } //1 get_White
		$a_81_6 = {47 65 74 44 6f 6d 61 69 6e } //1 GetDomain
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}