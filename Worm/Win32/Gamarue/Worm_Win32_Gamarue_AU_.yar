
rule Worm_Win32_Gamarue_AU_{
	meta:
		description = "Worm:Win32/Gamarue.AU!!Gamarue.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 08 00 00 "
		
	strings :
		$a_01_0 = {c7 45 fc 00 68 6e 70 } //1
		$a_01_1 = {35 63 72 73 00 } //1
		$a_01_2 = {35 74 69 78 65 } //1 5tixe
		$a_01_3 = {35 63 6a 6e 69 } //1 5cjni
		$a_01_4 = {81 f9 4b 43 41 50 } //1
		$a_80_5 = {69 73 5f 6e 6f 74 5f 76 6d 00 } //is_not_vm  1
		$a_80_6 = {63 64 6f 25 6c 75 2e 64 6c 6c 00 } //cdo%lu.dll  1
		$a_80_7 = {4b 42 25 30 38 6c 75 2e 65 78 65 00 } //KB%08lu.exe  1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1) >=4
 
}