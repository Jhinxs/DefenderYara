
rule Trojan_Win64_IcedID_AF_MTB{
	meta:
		description = "Trojan:Win64/IcedID.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 05 00 00 "
		
	strings :
		$a_80_0 = {3f 64 63 6a 69 71 70 72 40 40 59 41 48 58 5a } //?dcjiqpr@@YAHXZ  3
		$a_80_1 = {3f 6f 77 68 79 68 64 77 77 6e 66 40 40 59 41 48 58 5a } //?owhyhdwwnf@@YAHXZ  3
		$a_80_2 = {3f 76 7a 61 64 77 63 74 40 40 59 41 48 58 5a } //?vzadwct@@YAHXZ  3
		$a_80_3 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //DllRegisterServer  3
		$a_80_4 = {50 6c 75 67 69 6e 49 6e 69 74 } //PluginInit  3
	condition:
		((#a_80_0  & 1)*3+(#a_80_1  & 1)*3+(#a_80_2  & 1)*3+(#a_80_3  & 1)*3+(#a_80_4  & 1)*3) >=15
 
}
rule Trojan_Win64_IcedID_AF_MTB_2{
	meta:
		description = "Trojan:Win64/IcedID.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_80_0 = {3f 68 6f 70 65 72 64 40 40 59 41 48 58 5a } //?hoperd@@YAHXZ  3
		$a_80_1 = {3f 73 75 72 74 57 40 40 59 41 48 58 5a } //?surtW@@YAHXZ  3
		$a_80_2 = {3f 75 6e 69 65 72 74 57 40 40 59 41 48 58 5a } //?uniertW@@YAHXZ  3
		$a_80_3 = {53 65 6e 64 4d 65 73 73 61 67 65 41 } //SendMessageA  3
		$a_80_4 = {53 79 73 74 65 6d 50 61 72 61 6d 65 74 65 72 73 49 6e 66 6f 57 } //SystemParametersInfoW  3
		$a_80_5 = {44 65 6c 65 74 65 46 69 6c 65 41 } //DeleteFileA  3
	condition:
		((#a_80_0  & 1)*3+(#a_80_1  & 1)*3+(#a_80_2  & 1)*3+(#a_80_3  & 1)*3+(#a_80_4  & 1)*3+(#a_80_5  & 1)*3) >=18
 
}
rule Trojan_Win64_IcedID_AF_MTB_3{
	meta:
		description = "Trojan:Win64/IcedID.AF!MTB,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_01_0 = {48 63 04 24 48 8b 4c 24 20 0f b6 04 01 89 44 24 04 48 63 0c 24 33 d2 48 8b c1 48 f7 74 24 40 48 8b c2 48 8b 4c 24 38 0f b6 04 01 8b 4c 24 04 33 c8 8b c1 48 63 0c 24 48 8b 54 24 28 88 04 0a } //10
	condition:
		((#a_01_0  & 1)*10) >=10
 
}