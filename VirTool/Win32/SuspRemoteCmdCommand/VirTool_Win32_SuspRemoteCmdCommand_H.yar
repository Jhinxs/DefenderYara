
rule VirTool_Win32_SuspRemoteCmdCommand_H{
	meta:
		description = "VirTool:Win32/SuspRemoteCmdCommand.H,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {20 00 2f 00 63 00 20 00 } //1  /c 
		$a_00_2 = {31 00 3e 00 20 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 54 00 65 00 6d 00 70 00 5c 00 } //1 1> \Windows\Temp\
		$a_00_3 = {20 00 32 00 3e 00 26 00 31 00 } //1  2>&1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}