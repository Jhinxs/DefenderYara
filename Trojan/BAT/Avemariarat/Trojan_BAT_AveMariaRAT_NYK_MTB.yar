
rule Trojan_BAT_AveMariaRAT_NYK_MTB{
	meta:
		description = "Trojan:BAT/AveMariaRAT.NYK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {43 3a 5c 73 6f 6d 65 64 69 72 65 63 74 6f 72 79 } //1 C:\somedirectory
		$a_81_1 = {43 3a 5c 54 65 66 73 64 73 73 64 64 64 64 6d 70 } //1 C:\Tefsdssddddmp
		$a_81_2 = {43 3a 5c 4e 65 64 64 73 73 73 73 73 73 73 73 73 73 73 73 73 73 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 77 54 65 6d 70 } //1 C:\NeddssssssssssssssddddddddddddddddddddwTemp
		$a_81_3 = {66 6a 66 66 63 66 66 6b 66 68 67 6a } //1 fjffcffkfhgj
		$a_81_4 = {67 64 64 66 64 73 68 73 66 64 67 68 } //1 gddfdshsfdgh
		$a_81_5 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}