
rule VirTool_Win32_Joiner_gen_B{
	meta:
		description = "VirTool:Win32/Joiner.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {52 65 73 75 6c 74 2e 65 78 65 20 3d 20 25 6c 75 } //1 Result.exe = %lu
		$a_00_1 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_00_2 = {49 63 6f 6e 2c 20 45 78 65 2c 20 44 4c 4c 20 28 2a 2e 69 63 6f 2c 20 2a 2e 65 78 65 2c 20 2a 2e 64 6c 6c 29 } //1 Icon, Exe, DLL (*.ico, *.exe, *.dll)
		$a_03_3 = {e8 61 00 00 00 6a 00 68 ?? ?? ?? ?? 6a 00 6a 01 ff ?? ?? ?? ?? ?? e8 b1 00 00 00 8a c0 66 8b db 8a ed 6a 00 e8 13 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}