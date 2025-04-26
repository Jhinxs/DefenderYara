
rule Trojan_BAT_TaskLoader_AA_MTB{
	meta:
		description = "Trojan:BAT/TaskLoader.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 06 00 00 "
		
	strings :
		$a_00_0 = {57 bd a2 3d 09 0f 00 00 00 00 00 00 00 00 00 00 01 00 00 00 c8 00 00 00 43 00 00 00 9a } //10
		$a_81_1 = {69 6e 65 74 69 6e 66 6f } //3 inetinfo
		$a_81_2 = {57 65 62 44 6f 77 6e 6c 6f 61 64 } //3 WebDownload
		$a_81_3 = {47 65 74 53 70 65 63 69 61 6c 44 69 72 65 63 74 6f 72 79 50 61 74 68 } //3 GetSpecialDirectoryPath
		$a_81_4 = {47 65 74 44 65 6c 65 67 61 74 65 46 6f 72 46 75 6e 63 74 69 6f 6e 50 6f 69 6e 74 65 72 } //3 GetDelegateForFunctionPointer
		$a_81_5 = {4e 65 74 77 6f 72 6b 49 6e 66 6f 48 6f 73 74 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //3 NetworkInfoHost.Properties.Resources
	condition:
		((#a_00_0  & 1)*10+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3) >=25
 
}