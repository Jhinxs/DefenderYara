
rule VirTool_Win32_VBInject_gen_IU{
	meta:
		description = "VirTool:Win32/VBInject.gen!IU,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {4e 4f 44 45 4d 47 52 4c 69 62 43 74 6c 2e 54 61 73 6b 53 79 6d 62 6f 6c } //1 NODEMGRLibCtl.TaskSymbol
		$a_03_1 = {66 83 39 01 75 ?? 8b 41 14 8b 51 10 f7 d8 3b c2 89 (45 ?? 85 ??|?? ?? ?? 72) 90 14 8b 49 0c 03 c8 51 ff d7 8d 90 03 04 04 55 ?? 95 ?? ?? ?? ?? 8b f8 52 ff 15 ?? ?? ?? ?? 8b 90 03 04 04 45 ?? 85 ?? ?? ?? ?? 56 56 57 50 53 e8 ?? ?? ff ff ff 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}