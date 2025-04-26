
rule Trojan_BAT_FormBook_NY_MTB{
	meta:
		description = "Trojan:BAT/FormBook.NY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {6f 41 00 00 0a 26 11 0a 11 0d 16 11 0b 11 0c 16 6f ?? ?? ?? 0a 25 26 13 0f 7e ?? ?? ?? 04 11 0c 16 11 0f 6f ?? ?? ?? 0a } //5
		$a_01_1 = {46 47 53 54 48 44 47 46 48 4a 47 4a 48 44 } //1 FGSTHDGFHJGJHD
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}
rule Trojan_BAT_FormBook_NY_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.NY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {43 3a 5c 54 65 66 73 64 64 64 64 64 6d 70 } //1 C:\Tefsdddddmp
		$a_81_1 = {43 3a 5c 4e 65 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 77 54 65 6d 70 } //1 C:\NeddddddddddddddddddddddwTemp
		$a_81_2 = {44 79 6e 61 6d 69 63 44 6c 6c 49 6e 76 6f 6b 65 54 79 70 65 } //1 DynamicDllInvokeType
		$a_81_3 = {64 61 73 64 61 73 64 64 66 64 66 68 68 64 73 64 66 73 61 64 } //1 dasdasddfdfhhdsdfsad
		$a_81_4 = {68 54 68 72 65 68 66 64 66 68 73 73 64 64 66 61 64 } //1 hThrehfdfhssddfad
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}