
rule VirTool_Win32_VBInject_gen_CT{
	meta:
		description = "VirTool:Win32/VBInject.gen!CT,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {94 40 fc 1c 00 94 40 fc 10 00 aa 71 90 fd } //1
		$a_02_1 = {38 00 42 00 34 00 43 00 32 00 34 00 30 00 38 00 35 00 31 00 3c 00 50 00 41 00 54 00 43 00 48 00 ?? ?? 3e 00 45 00 38 00 3c 00 50 00 41 00 54 00 43 00 48 00 ?? ?? 3e 00 35 00 39 00 38 00 39 00 30 00 31 00 36 00 36 00 33 00 31 00 43 00 30 00 43 00 33 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}