
rule Trojan_BAT_Formbook_NXW_MTB{
	meta:
		description = "Trojan:BAT/Formbook.NXW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {44 69 72 65 63 74 6f 72 79 20 79 6f 75 20 77 61 67 64 67 67 67 67 67 67 67 6e 74 20 74 6f 20 64 65 6c 65 74 65 20 69 73 20 6e 6f 74 20 65 78 69 73 74 } //1 Directory you wagdgggggggnt to delete is not exist
		$a_81_1 = {46 61 69 73 73 64 6c 66 68 64 63 64 61 73 73 73 73 73 73 73 64 73 73 66 73 73 73 73 64 73 73 73 73 73 64 73 73 73 73 73 73 73 73 73 61 73 73 64 67 67 67 67 67 67 67 67 67 67 67 64 64 67 64 73 64 64 64 64 64 64 66 64 64 67 67 67 66 73 66 67 66 67 55 70 64 61 74 65 } //1 FaissdlfhdcdasssssssdssfssssdsssssdsssssssssassdgggggggggggddgdsddddddfddgggfsfgfgUpdate
		$a_81_2 = {63 68 66 66 6b 61 66 73 73 68 64 67 68 66 } //1 chffkafsshdghf
		$a_81_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
rule Trojan_BAT_Formbook_NXW_MTB_2{
	meta:
		description = "Trojan:BAT/Formbook.NXW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {2e 00 72 00 65 00 73 00 00 09 6f 00 75 00 72 00 63 00 00 05 65 00 73 00 00 0d 78 00 63 00 76 00 74 00 68 00 36 00 00 09 76 } //1
		$a_81_1 = {6d 6a 68 6d 36 37 69 } //1 mjhm67i
		$a_81_2 = {78 63 76 74 68 36 } //1 xcvth6
		$a_81_3 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 4e 61 6d 65 73 } //1 GetManifestResourceNames
		$a_81_4 = {59 59 59 53 59 59 59 79 59 59 59 73 59 59 59 74 59 59 59 65 59 59 59 6d 59 59 59 } //1 YYYSYYYyYYYsYYYtYYYeYYYmYYY
		$a_81_5 = {59 59 59 52 59 59 59 65 59 59 59 66 59 59 59 6c 59 59 59 65 59 59 59 63 59 59 59 74 59 59 59 69 59 59 59 6f 59 59 59 6e 59 59 59 } //1 YYYRYYYeYYYfYYYlYYYeYYYcYYYtYYYiYYYoYYYnYYY
		$a_81_6 = {59 59 59 41 59 59 59 73 59 59 59 73 59 59 59 65 59 59 59 6d 59 59 59 62 59 59 59 6c 59 59 59 79 59 59 59 } //1 YYYAYYYsYYYsYYYeYYYmYYYbYYYlYYYyYYY
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}