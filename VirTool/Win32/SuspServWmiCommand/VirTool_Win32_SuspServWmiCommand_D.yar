
rule VirTool_Win32_SuspServWmiCommand_D{
	meta:
		description = "VirTool:Win32/SuspServWmiCommand.D,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 } //1 cmd
		$a_00_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //1 powershell
		$a_00_2 = {29 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 28 00 } //1 ).DownloadFile(
		$a_00_3 = {3a 00 3a 00 52 00 65 00 61 00 64 00 41 00 6c 00 6c 00 42 00 79 00 74 00 65 00 73 00 28 00 } //1 ::ReadAllBytes(
		$a_00_4 = {3a 00 3a 00 57 00 72 00 69 00 74 00 65 00 41 00 6c 00 6c 00 42 00 79 00 74 00 65 00 73 00 28 00 } //1 ::WriteAllBytes(
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}