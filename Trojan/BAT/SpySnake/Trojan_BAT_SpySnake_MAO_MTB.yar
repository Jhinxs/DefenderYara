
rule Trojan_BAT_SpySnake_MAO_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MAO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {57 94 a2 29 09 0f 00 00 00 fa 25 33 00 16 } //1
		$a_01_1 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_3 = {48 69 64 65 4d 6f 64 75 6c 65 4e 61 6d 65 41 74 74 72 69 62 75 74 65 } //1 HideModuleNameAttribute
		$a_01_4 = {67 65 74 5f 45 78 65 63 75 74 61 62 6c 65 50 61 74 68 } //1 get_ExecutablePath
		$a_01_5 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_01_6 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 46 00 72 00 6f 00 6d 00 20 00 50 00 61 00 74 00 69 00 65 00 6e 00 74 00 54 00 62 00 } //1 Select * From PatientTb
		$a_01_7 = {61 00 61 00 4d 00 61 00 65 00 61 00 74 00 61 00 68 00 61 00 6f 00 61 00 64 00 61 00 30 00 61 00 } //1 aaMaeatahaoada0a
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}