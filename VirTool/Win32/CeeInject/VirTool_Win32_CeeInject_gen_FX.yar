
rule VirTool_Win32_CeeInject_gen_FX{
	meta:
		description = "VirTool:Win32/CeeInject.gen!FX,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {81 fe 00 00 00 01 8b 4d e4 8d 8c 41 44 06 00 00 0f b7 01 73 17 } //1
		$a_02_1 = {9c 60 68 00 00 3c f0 8b 74 24 28 fc bf ?? ?? ?? 00 03 34 ?? 8a 06 0f b6 c0 46 ff 34 85 06 36 3c 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}