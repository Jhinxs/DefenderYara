
rule VirTool_Win32_CeeInject_gen_HX{
	meta:
		description = "VirTool:Win32/CeeInject.gen!HX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 4e 50 8b 56 34 6a 00 68 00 30 00 00 51 8b 4c 24 ?? e8 } //1
		$a_03_1 = {0f b7 4e 06 3b c1 72 90 09 0b 00 a1 ?? ?? ?? ?? 40 a3 } //1
		$a_03_2 = {8b 4e 28 8b 7e 34 8b 44 24 ?? 8d 54 24 ?? 52 03 cf } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}