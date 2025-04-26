
rule VirTool_Linux_Myrddin_DS_MTB{
	meta:
		description = "VirTool:Linux/Myrddin.DS!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {4d 65 72 6c 69 6e 43 6c 69 65 6e 74 } //1 MerlinClient
		$a_01_1 = {53 65 6e 64 4d 65 72 6c 69 6e 4d 65 73 73 61 67 65 } //1 SendMerlinMessage
		$a_03_2 = {6e 65 74 2e 54 43 50 43 6f 6e 6e [0-3c] 6e 65 74 2e 55 44 50 41 64 64 72 [0-3c] 6e 65 74 2e 55 44 50 43 6f 6e [0-3c] 6e 65 74 2e 6e 73 73 43 6f 6e 66 [0-3c] 6e 65 74 2e 72 61 77 43 6f 6e 6e } //1
		$a_01_3 = {6d 79 74 68 69 63 2e 54 61 73 6b } //1 mythic.Task
		$a_01_4 = {4b 65 79 4c 6f 67 57 72 69 74 65 72 } //1 KeyLogWriter
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}