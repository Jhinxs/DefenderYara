
rule VirTool_Win32_DelfInject_gen_AG{
	meta:
		description = "VirTool:Win32/DelfInject.gen!AG,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {43 75 72 72 65 6e 74 55 73 65 72 } //1 CurrentUser
		$a_03_1 = {8d 45 fc 50 56 e8 ?? ?? ?? ?? 8d 45 f8 8b d6 e8 ?? ?? ?? ?? 8b 45 f8 ba ?? ?? ?? ?? e8 ?? ?? ?? ?? 75 02 b3 01 } //1
		$a_02_2 = {8b 45 fc 8a 44 18 ff 24 0f 8b 55 ?? 8a 54 32 ff 80 e2 0f 32 c2 88 45 ?? 8d 45 ?? e8 ?? ?? ?? ?? 8b 55 ?? 8a 54 1a ff 80 e2 f0 8a 4d ?? 02 d1 88 54 18 ff 46 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}