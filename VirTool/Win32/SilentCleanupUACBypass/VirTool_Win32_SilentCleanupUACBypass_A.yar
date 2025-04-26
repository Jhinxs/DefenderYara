
rule VirTool_Win32_SilentCleanupUACBypass_A{
	meta:
		description = "VirTool:Win32/SilentCleanupUACBypass.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 00 73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {20 00 2f 00 52 00 75 00 6e 00 20 00 } //1  /Run 
		$a_00_2 = {20 00 2f 00 54 00 4e 00 20 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 44 00 69 00 73 00 6b 00 43 00 6c 00 65 00 61 00 6e 00 75 00 70 00 5c 00 53 00 69 00 6c 00 65 00 6e 00 74 00 43 00 6c 00 65 00 61 00 6e 00 75 00 70 00 } //1  /TN \Microsoft\Windows\DiskCleanup\SilentCleanup
		$a_00_3 = {20 00 2f 00 49 00 } //1  /I
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}