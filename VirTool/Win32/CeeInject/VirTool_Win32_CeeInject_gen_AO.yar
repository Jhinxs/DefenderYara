
rule VirTool_Win32_CeeInject_gen_AO{
	meta:
		description = "VirTool:Win32/CeeInject.gen!AO,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_09_0 = {5a 77 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e 00 } //1
		$a_09_1 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 00 } //1
		$a_03_2 = {e9 00 00 00 00 6a 0e 68 ?? ?? 40 00 e8 ?? ?? ?? ?? 59 a3 ?? ?? 40 00 59 c3 e9 00 00 00 00 6a 14 68 ?? ?? 40 00 e8 ?? ?? ?? ?? 59 a3 ?? ?? 40 00 59 c3 } //1
	condition:
		((#a_09_0  & 1)*1+(#a_09_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}